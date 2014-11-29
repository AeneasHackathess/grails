package gr.meerkat

import grails.converters.JSON

class ArduinoController {

    def index() {
        def user=User.findByMac(params.mac)
        if(user){
            if(params.int("panic")==1){
                user.patient.panic=true
            }
            Place place2=new Place(lat: params.float("lat"),lng: params.float("lng"))
            try {
                place2.save(flush: true,failOnError: true)
                def movement2=false
                if(params.int("move")==1){
                    movement2=true
                }
                Measure measure=new Measure(timestamp: new Date(), pulseRate: params.int("pulse"),movement: movement2,place: place2)
                try {
                    measure.save(flush: true,failOnError: true)
                    user.patient.measures.add(measure)
                    def res = [response: "ok"]
//                    Evaluate Risc
                    int s=0
                    if(user.patient.sex=="Άνδρας"){
                        s=1
                    }
                    def risk=evaluate(user.patient.age,s,user.patient.cholisterol,params.int('pulse'))
                    if(risk>=2){
                        user.patient.panic=true
                    }
                    render res as JSON
                }catch (Exception e2){
                    println('error on measure save')
                    measure.errors.allErrors.each {
                        println it
                    }
                    def res = [response: "failMeasure"]
                    render res as JSON
                }
            }catch (Exception e){
                println('error on place save')
                place2.errors.allErrors.each {
                    println it
                }
                def res = [response: "failPlace"]
                render res as JSON
            }
        }
    }
    def evaluate(int age,int sex,int chol,int pulse){
        def command = """./buildTestArff $age $sex $chol $pulse"""// Create the String
        println(command)
        def proc = command.execute()                 // Call *execute* on the string
        proc.waitFor()                               // Wait for the command to finish

        println "return code: ${ proc.exitValue()}"
        println "stderr: ${proc.err.text}"
        println "stdout: ${proc.in.text}" // *out* from the external program is *in* for groovy

        command = "./evaluate"// Create the String
        proc = command.execute()                 // Call *execute* on the string
        proc.waitFor()                               // Wait for the command to finish

        println "return code: ${ proc.exitValue()}"
        println "stderr: ${proc.err.text}"
        println "stdout: ${proc.in.text}" // *out* from the external program is *in* for groovy

        def predict=new File("predict.csv")
        def pat_class;
            if(predict){
                predict.splitEachLine(','){fields ->
                    if(fields[0]=="1"){
                       pat_class=fields[2].split(':')[1]
                    }
                    return pat_class
            }
        }else {
                println("Null")
            }
    }
}
