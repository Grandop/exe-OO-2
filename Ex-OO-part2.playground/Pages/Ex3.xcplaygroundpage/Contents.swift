//: [Previous](@previous)


import Foundation


enum MainBreedsOfDogs {
    case shihTzu
    case rottweiler
    case yorkshire
    case goldenRetriever
    case pastorAlemão
    case pug
    case bulldog
    case labrador
    case viraLata
}

    
class DataOfDogs {
    var name: String?
    var initialWeight: Float
    private var breed: MainBreedsOfDogs
    private var weight: Float
    private var energy: Int
    private var isAlive: Bool = true
    
    
    init(name: String? = "", breed: MainBreedsOfDogs, initialWeight: Float, weight: Float, energy: Int, isAlive: Bool = true) {
        self.name = name
        self.breed = breed
        self.initialWeight = initialWeight
        self.weight = weight
        self.energy = energy
        self.isAlive = isAlive
    }
    
    func makeDogBark() {
        if self.isAlive == false || self.energy < 0 {
            killTheDog()
            print("o cão não está mais entre nós")
        } else {
            decreaseEnergy(value: 5)
            decreaseWeight(value: 0.2)
            checkIfDogIsAlive()
        }
        
    }
    
    func makeDogRun() {
        if self.isAlive == false || self.energy < 0 {
            killTheDog()
            print("o cão não está mais entre nós")
        } else {
            decreaseEnergy(value: 15)
            decreaseWeight(value: 0.6)
            checkIfDogIsAlive()
        }
        
    }
    
    func makeDogEat() {
        if self.isAlive == false || self.energy < 0 {
            killTheDog()
            print("o cão não está mais entre nós")
        } else {
            increaseEnergy(value: 45)
            increaseWeight(value: 1.8)
            if self.initialWeight * 1.5 < self.weight {
                print("o cão ta gordo, precisa correr")
            }
        }
        
    }
    
    func killTheDog(){
        self.isAlive = false
    }
    
    func checkIfDogIsAlive() {
        self.isAlive = energy > 0
    }
    
    func decreaseEnergy(value: Int) {
        self.energy -= value
    }
    
    func increaseEnergy(value: Int) {
        self.energy += value
    }
    
    func printEnergy() {
        print(self.energy)
    }
    
    func decreaseWeight(value: Float) {
        self.weight -= value
    }
    
    func increaseWeight(value: Float) -> Float {
        self.weight += value
        return self.weight
    }
    
    func printWeight() {
        print(self.weight)
    }
    
    func printIsAlive() {
        print(self.isAlive)
    }
    
    func choosingBreed(breeds: MainBreedsOfDogs) {
        self.breed = breeds
        print(self.breed)
    }
    

}

var dog = DataOfDogs(name: "Thor", breed: MainBreedsOfDogs.rottweiler, initialWeight: 20.0, weight: 20.0, energy: 19)


dog.printWeight()
dog.makeDogEat()
dog.makeDogEat()
dog.makeDogEat()
dog.makeDogEat()
dog.makeDogEat()
dog.makeDogEat()
dog.printWeight()
//: [Next](@next)
