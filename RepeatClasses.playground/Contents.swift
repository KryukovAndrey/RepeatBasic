import UIKit

class Human {
    var name: String
    
    func description() {
        print("My name is \(name)!")
    }
    
    init(name: String) {
        self.name = name
    }
}

var igor = Human(name: "Igor")
igor

class Child: Human {
    var toy: String
    
    override func description() {
        print("I am child and my name is \(name). I have a toy - \(toy).")
    }
    
    init(toy: String, name: String) {
        self.toy = toy
        super.init(name: name)
    }
}

//var ivan = Child(name: "Ivan", toy: "Hummer")
//var ivan = Child(name: "Ivan")

var ivan = Child(toy: "Hummer", name: "Ivan")
ivan.description()

// тест


class Rectangular {
    var height: Int
    var wigth: Int
    var depth: Int
    
    var volume : Int {
        return height * wigth * depth
    }
    
    init(height: Int, wigth: Int, depth: Int) {
        self.height = height
        self.wigth = wigth
        self.depth = depth
    }
}

var rect = Rectangular(height: 5, wigth: 10, depth: 15)
rect.volume


class Person {
    var name: String
    var secondName: String
    
    var fullName: String {
        get {
            return name + " " + secondName
        }
        
        set(value){
            let array = value.components(separatedBy: " ")
            name = array[0]
            secondName = array[1]
        }
    }
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
}

var elena = Person(name: "Elena", secondName: "Tolstopiatova")
