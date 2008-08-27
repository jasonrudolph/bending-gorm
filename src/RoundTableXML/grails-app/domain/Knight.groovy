class Knight {
    def id
    String name
    Long numDragonsSlain
    
    static hasMany = [swords:Sword]
    
    static constraints = {
        name(blank:false, maxSize:50)
    }
}
