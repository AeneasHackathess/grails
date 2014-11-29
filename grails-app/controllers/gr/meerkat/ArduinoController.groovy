package gr.meerkat

class ArduinoController {

    def index() {
        def user=User.findByMac(params.mac)
        if(user){
            Place place2=new Place(lat: params.lat,lng: params.lng)
            try {
                place2.save(flush: true,failOnError: true)
                def movement2=0
                if(params.move==1){
                    movement2=1
                }
                Measure measure=new Measure(timestamp: new Date(), pulseRate: params.pulse,movement: movement2,place: place2)
                try {
                    measure.save(flush: true,failOnError: true)
                    user.patient.measures.add(measure)
                }catch (Exception e2){
                    println('error on measure save')
                    measure.errors.allErrors.each {
                        println it
                    }
                }
            }catch (Exception e){
                println('error on place save')
                place2.errors.allErrors.each {
                    println it
                }
            }
        }
    }
}
