package gr.meerkat

class User {
    String username
    String mac
    Patient patient

    static constraints = {
        username(nullable: false)
        mac(nullable: true,unique: true)
        patient(nullable: false)
    }
}
