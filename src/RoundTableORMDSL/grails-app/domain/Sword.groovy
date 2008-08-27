class Sword {
    String manufacturer
    Knight knight
    
    static belongsTo = [Knight]
    
    static mapping = {
        table 'sword_inventory'
        version false
        id column : 'serial_number', generator : 'assigned'
        columns {
            knight column : 'assignee'
        }
    }
}
