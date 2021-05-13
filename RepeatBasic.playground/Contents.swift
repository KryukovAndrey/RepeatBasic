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




// Работаю с guard

var arg1 = 10
var arg2 = 10

func calc(a: Int, b: Int){
    
    guard a == b else {return}
    guard a >= b else {return}
    
    print("a >= b")
}

calc(a: arg1, b: arg2)
