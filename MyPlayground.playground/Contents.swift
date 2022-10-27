import UIKit

class Spaceship {
    var name: String = ""
    var health = 0
    var position = 0
    
    init(name: String) {
        self.name = name
    }
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}

let falcon = Spaceship(name: "Falcon")
//falcon.name = "Falcon"
for _ in 1...2 {
    falcon.moveLeft()
}
falcon.moveRight()
print(falcon.position)

falcon.wasHit()

class Fighter: Spaceship {
    var weapon = ""
    var remainingFirePower = 5
    
    override init(name: String) {
        super.init(name: name)
    }
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have more fire power.")
        }
    }
}

var destroyer = Fighter(name: "Destroyer")
destroyer.weapon = "Laser"
destroyer.remainingFirePower = 10
//destroyer.name = "Destroyer"
destroyer.moveRight()
print(destroyer.position)

// we cannot call weapon via falcon instance bc the subclass is NOT the Spaceship class therefore the child class Fighter's property cannot be called in the parent class.

for _ in 1...5 {
    destroyer.fire()
}

class ShieldedShip: Fighter {
    var shieldStrength = 25
    
    override init(name: String) {
        super.init(name: name)
    }
    
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 1
        } else {
            super.wasHit()  //   same as health -= 5
        }
    }
}

var defender = ShieldedShip(name: "Defender")

//defender.name = "Defender"
defender.weapon = "Cannon"
defender.moveRight()

print(defender.position)

defender.fire()

print(defender.remainingFirePower)

defender.wasHit()

print(defender.shieldStrength, defender.health)

let sameShip = falcon
print(sameShip.position)
print(falcon.position)
sameShip.moveLeft()
print(sameShip.position, falcon.position)

//the sameShip and falcon instances are printing the same result bc classes are reference types which means no matter how many instances are created from the same class, it all points the same place on memory, therefore inside of the print function the results will be the same.
