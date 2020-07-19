import UIKit

func arrayMinMax(array: [Int]) -> (min: Int, max: Int)? {
    guard !array.isEmpty else { return nil }
    
    var currentMin = array[0], currentMax = array[0]
    
    for current in array[1..<array.count] {
        
        if current < currentMin {
            currentMin = current
        } else if current > currentMax {
            currentMax = current
        }
    }
    
    return (currentMin, currentMax)
}


func returnName(name: String) -> String {
    "The name's " + name
}

func greetPerson(_ name: String, from hometown: String) -> String {
    "Greetings to \(name) from \(hometown)!"
}

func modifierFunction(_ number: inout Int) {
    number = 100
}

/////////////////////////////////////
let array = [0, -90, 100, 500]
if let minMax = arrayMinMax(array: array) {
    print("min is \(minMax.min),  max is \(minMax.max)")
}

print(returnName(name: "J"))

print(greetPerson("John", from: "Alabama"))

var numberToChange = 4
modifierFunction(&numberToChange)
print(numberToChange)
