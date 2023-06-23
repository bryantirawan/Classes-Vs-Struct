
let skeleton = Enemy()
print(skeleton.health)
skeleton.move()
skeleton.attack()

let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.move()
dragon.attack()
dragon.talk(speech: "my teeth are swords!")


let skeleton1 = Enemy()
let skeleton2 = skeleton1
//recall that skeleton1 health is 100
skeleton1.takeDamage(amount: 10)
print(skeleton2.health)
//you would think skeleton2's health is 100 but it's actually 90 because classes are passed by reference. when you did let skeleton2 = skeleton1, you did not make a copy. You just created another reference to the same skeleton. If you did let skeleton2 = Enemey(), it would be a copy.
//Classes are more error prone to struct for this reason
//If Enemey was a struct, var skeleton2 = skeleton1, skeleton2 is a copy and will stay 100 health. Notice that it's now var and not let. When .takeDamage() happens, it is a mutating function which destroys the struct and makes a new one as structs are immutable. To destroy the struct, it needs var and not let. 
//structs are passed by value vs. classes are passed by refernece
//Also if you screw up or delete a struct,you are just affecting that struct vs. the whole class.
//CHOOSE STRUCT BY DEFAULT
