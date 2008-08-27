class Sword {
    Long serialNumber
    String manufacturer
    Knight knight
    
    static belongsTo = [Knight]
}
