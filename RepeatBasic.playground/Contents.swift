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

var commonSet = set_1.union(set_2).sorted()


