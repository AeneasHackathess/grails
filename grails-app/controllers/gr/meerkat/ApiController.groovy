package gr.meerkat

class ApiController {

    def index() {}
    def add(){
        DatasetPlaces place=DatasetPlaces.findByAddress(params.address)
        place.number=params.number
        place.name=params.name
        try {
            place.save(flush: true,failOnError: true)
        }catch (Exception e){
            println('error on save')
        }
    }
}
