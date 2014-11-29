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
}
