import UIKit

struct Struct {
    var a = 1
}

class Class {
    var a = 1
}

func addTwo(c: Class) {
    c.a += 2
}

//func addTwo(s: Struct) {
//    s.a += 2
//}

var structInstance = Struct()
var classInstance = Class()

var classInstances = [Class(), Class()]

for instance in classInstances {
    addTwo(c: instance)
}

print(classInstances[1].a)

let newClassInstance = classInstance
newClassInstance.a = 100
print(classInstance.a)



