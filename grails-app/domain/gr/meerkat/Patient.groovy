package gr.meerkat

class Patient {
    String name
    Integer age
    String sex
    Integer cholisterol
    boolean dementia
    boolean alzheimer
    static hasMany = [measures:Measure]

    static constraints = {
        cholisterol(nullable: true)
    }
}
