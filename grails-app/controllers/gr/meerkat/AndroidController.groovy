package gr.meerkat

import grails.converters.JSON
class AndroidController {
    def index() {
        println(params)
        def response=[]
        User user=User.findByUsername(params.username)
        if(user){
            if(user.patient.panic){
                user.patient.panic=false
                def measure = user.patient.measures
                measure=measure.sort{it.id}.last()
                def near=""
                for(int i=0;i<3;i++){
                    def place=DatasetPlaces.get(i+1)
                    near=near+place.address+"!"+place.category
                    if(i!=2){
                        near=near+"_"
                    }
                }
//                println(near)
                response.add(pulse:measure.pulseRate,lat:measure.place.lat,lng:measure.place.lng,move:user.patient.moved,nearby:near,state:"danger")
                def res = [response: response]
                render res as JSON
            }
            if(params.int("check")==1){
                def measure = user.patient.measures
                measure=measure.sort{it.id}.last()
//                println(measure.last())
                response.add(pulse:measure.pulseRate,lat:measure.place.lat,lng:measure.place.lng,move:measure.timestamp,state:"check")
                def res = [response: response]
                render res as JSON
            }else{
                def res = [response: ""]
                render res as JSON
            }
        }
    }
}