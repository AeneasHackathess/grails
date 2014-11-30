package gr.meerkat

class DatasetPlaces {
    float lat
    float lng
    String address
    String name
    String category
    String number
    String toString(){
        return address
    }
    static constraints = {
        number(nullable: true)
    }
}
