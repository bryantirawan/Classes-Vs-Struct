
class Enemy {
    var health = 100
    var attackStrength = 10
    
    //like struct, you can also do:
//    var health: Int
//    var attackStrength: Int
//
//    init(health: Int, attackStrength: Int) {
//        self.health = health
//        self.attackStrength = attackStrength
//    }
//
//        Remember when you declare an enemy, you will need to specify health and attackStrength
    
    func move() {
        print("Walk forwards")
    }
    
    func takeDamage(amount: Int) {
        health = health - amount 
    }
    //recall that if Enemy was a struct, this func would need to be mutating 
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage")
    }
    
}
