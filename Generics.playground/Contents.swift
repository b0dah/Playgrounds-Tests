import UIKit

// MARK:- swift standart lib
var a = 1, b = 100

swap(&a, &b)
print("\(a) \(b)")

// MARK:- Custom generic
func swapTwoValues<Type>(_ a: inout Type, _ b: inout Type) {
    let temp = a
    a = b
    b = temp
}

var  one = "hola", another = "world"
swap(&one, &another)
print("\(one) \(another)")

// MARK:- Generic Types
struct Stack<Element> {
    var items: [Element] = []
    
    mutating func push(element: Element) {
        items.append(element)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
}

/// control flow
var stackOfStrings = Stack<String>()
stackOfStrings.push(element: "uno")
stackOfStrings.push(element: "dos")
stackOfStrings.push(element: "tres")
stackOfStrings.push(element: "cuatro")
stackOfStrings.push(element: "cinco")
stackOfStrings.push(element: "seis")

for i in 0...5 {
    print(stackOfStrings.pop())
}

// MARK:- Generic Type Constraints
func findIndex<T: Equatable>(of valueToFind: T, in array: [T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    
    return nil
}

/// control flow
let indexOfDouble = findIndex(of: 9.3, in: [1.0,  9.3])
let indexOfString = findIndex(of: "bar", in: ["holder", "bar"])

if let indexOfDouble = indexOfDouble, let indexOfString = indexOfString {
    print("They exist \(indexOfDouble)   \(indexOfString)")
}

