package gr.meerkat

class RegisterController {

    def index() { }
    def register(){
        boolean dem=false
        if(params.dementia){
            dem=true
        }
        boolean altz=false
        if(params.alzheimer){
            altz=true
        }
        Patient patient2=new Patient(name: params.patientName,sex: params.sex,age: params.age,dementia: dem,alzheimer: altz,cholisterol: params.chol,panic: false)
        try {
            patient2.save(flush: true,failOnError: true)
            User user=new User(username: params.username,mac: params.mac,patient: patient2)
            try {
                user.save(flush: true,failOnError: true)
            }catch (Exception e2){
                patient2.delete(flush: true)
                respond user.errors, view: 'index'
            }
        }catch (Exception e){
            respond patient2.errors, view: 'index'
        }
    }
    def success(){

    }
}
