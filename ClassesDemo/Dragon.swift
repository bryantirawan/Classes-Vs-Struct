class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print(speech) 
    }
    
    //when you want to completley override move()
    override func move() {
        print("fly forwards")
    }
    
    //when you want to take Enemy.attack() and then do more
    override func attack() {
        super.attack()
        //super.attack() is Enemy.attack()
        print("spits fire, does 10 damage")
    }
    
}

//NSObject inherits to UIResponder inherits to UIVIew inherits to UIControl inherits to UIButton 
