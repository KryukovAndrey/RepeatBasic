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




