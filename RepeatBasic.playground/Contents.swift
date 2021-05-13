import UIKit

// Словари

var nameDict = ["Иван": 10, "Максим": 20]
nameDict["Кирилл"] = 30
print(nameDict)




// Множества

var setOne: Set = [1, 2, 3, 4]
setOne.insert(5)
setOne.insert(4)
print(setOne)


var set_1: Set = [1,2,3,4]
var set_2: Set = [1,2,5,6,7,8,9]

var allSet = set_1.union(set_2).sorted()
var commonSet = set_1.intersection(set_2)




// Guard

var arg1 = 10
var arg2 = 10

func calc(a: Int, b: Int){
    
    guard a == b else {return}
    guard a >= b else {return}
    
    print("a >= b")
}

calc(a: arg1, b: arg2)


//for i in 1...5 {
//    guard i != 3 else {continue}
//    print("i = \(i)")
//}

for i in 1...5 {
//    if i != 3 {
//        print("i = \(i)")
//    }
    
    if i == 3 {
        print("i = \(i)!!!!!!!")
        continue
    }
    print("i = \(i)")
}




// Switch

var totalScore = 100

switch totalScore {
case 10:
    print("You are not jedi")
case 20:
    print("You are still not jedi")
case 50..<100:
    print("You are almost jedi")
case 100:
    print("You are jedi!")
default:
    print("break")
}







// For in

var array = [1,2,3,4,5]

for i in array {
    print("array[i] = \(i)")
}

array[3]




// While - пока

var timer = 5
print("Couting down")

//Цикл выполняется всегда, если условие верно, т.е. сначало проверяется условие, потом выполняется цикл
while timer > 0 {
    print(timer)
    timer -= 1
}

print("Start!")


var timer_1 = 5
print("Couting down")

//Сначало выполняется цикл, а потом выполняется проверка
repeat {
    print(timer_1)
    timer_1 -= 1
} while timer_1 > 0

print("Start!")






// Сложная функция (ф-ция в качестве возвращаемого аргумента)

func whatToDo(missed: Bool) -> (Int) -> Int {
    func missCountUp(input: Int) -> Int {return input + 1}
    func missCountDown(input: Int) -> Int {return input - 1}
    
    return missed ? missCountUp : missCountDown
}

var missed = 0
missed = whatToDo(missed: true)(missed)
missed = whatToDo(missed: true)(missed)
missed = whatToDo(missed: false)(missed)





// closure

let closure = {
    print("Hello World!")
}

// 1
func repeatThreeTimes(closure: () -> ()){
    for _ in 0...2 {
        closure()
    }
}

// 2
repeatThreeTimes(closure: closure)

// 3
repeatThreeTimes(closure: {
    print("Hello World!")
})

// 4
repeatThreeTimes(closure: {
    () -> () in
    print("Hello World!")
})

// 5
repeatThreeTimes {
    () -> () in
    print("Hello World!")
}

// 6
let unsortedArray = [2, 33, 100, 0, -50, 999]
let sortedArray = unsortedArray.sorted {
    (number1: Int, number2: Int) -> Bool in
    return number1 < number2
}




// Кортежи

let one = 1
let two = 2
let three = 3

let numbers = (one, two, three)

let boy = (5, "Sergey")
boy.0
boy.1

let greenPencil = (color: "Green", length: 5, weight: 20)
greenPencil.color
greenPencil.length
greenPencil.weight
let (greenColor, greenLength, greenWeight) = greenPencil
greenColor


var age = 0
var name = ""

let agesAndeNames = ["Max" : 10, "Alex" : 40, "Mark" : 30]

for (nameInD, ageInD) in agesAndeNames {
    if ageInD > age {
        age = ageInD
        name = nameInD
    }
}

age
name



// Опционалы

var fuel: Int?
fuel = nil

func checkFuel() {
    guard let yesFuel = fuel else {
        print("no fuel data available")
        return
    }
    print("fuel = \(yesFuel) liters")
}

checkFuel()






// Classes

class Human {
    
    var name = "Ivan"
    var age: Int? = 30
    var hairs = true
    
    func description(){
        if let humanAge = age {
            print("Hello! My name is \(name) and i'am \(humanAge) years old")
        } else {
            print("Hello! My name is \(name)")
        }
    }
}

let humanOne = Human()
humanOne.name = "Igor"
humanOne.description()

let humanTwo = Human()
humanTwo.name = "Pavel"
humanTwo.hairs = false
humanTwo.age = 50

var arrayHumans = [Human]()
arrayHumans.append(humanOne)
arrayHumans.append(humanTwo)
arrayHumans


class car {
    
    var mark: String
    var color: String?
    var price: Int
    
    func description() {
        guard let carColor = color else {
            print("\(mark) cost is \(price)$")
            return
        }
        print("\(mark) have \(carColor) and cost is \(price)$")
    }
    
    init(mark: String, color: String?, price: Int) {
        self.mark = mark
        self.color = color
        self.price = price
    }
}

var bmw = car(mark: "BMW", color: "Black", price: 10000)
var audi = car(mark: "AUDI", color: nil, price: 15000)

bmw.description()
audi.description()







