//: [Previous](@previous)

class Person {
    var name: String
    var age: Int
    var sex: String
    var weight: Float
    var height: Float
    var energy: Int
    
    init(name: String, age: Int, sex: String, weight: Float, height: Float, energy: Int) {
        self.name = name
        self.age = age
        self.sex = sex
        self.weight = weight
        self.height = height
        self.energy = energy
    }
    
    func run() {
        if self.energy < 40 {
            print("Falta energia para correr")
        }else{
            self.energy -= 40
        }
    }
    
    func jump() {
        if self.energy < 30 {
            print("Falta energia para pular")
        }else {
            self.energy -= 30
        }
    }
}
class Athlete : Person {
    var modality: String = ""
    
    init(name: String, age: Int, sex: String, weight: Float, height: Float, energy: Int, modality: String) {
        super.init(name: name, age: age, sex: sex, weight: weight, height: height, energy: energy)
        self.modality = modality
    }
    
    override func run(){
        if self.energy < 20 {
            print("Falta energia para correr")
        }else{
            self.energy -= 20
        }
    }
    
    override func jump(){
        if self.energy < 15 {
            print("Falta energia para pular")
        }else{
            self.energy -= 15
        }
    }
}
var exercise = Athlete(name: "Pedro", age: 18, sex: "masculino", weight: 70.00, height: 1.70, energy: 16, modality: "futebol")

exercise.energy
exercise.jump()

//: [Next](@next)
