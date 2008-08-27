class Knight {
    String name
    Long numDragonsSlain
    
    static hasMany = [swords:Sword]
    
    static constraints = {
        name(blank:false, maxSize:50)
    }
}
