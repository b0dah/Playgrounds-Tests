import Cocoa

var array = [56,7,8,3,364,13]

let sortedArray = array.sorted { (firstInt, secondInt) -> Bool in
    return firstInt > secondInt
}

let anotherSortedArray = array.sorted { $0 < $1 }

print(anotherSortedArray)

let numbers = [1,2,3,4,5,6]
let multipliedNumbers = numbers.reduce(1) { (currentTotal, newValue) -> Int in
    return currentTotal * newValue
}

let total = numbers.reduce(1, { $0 * $1 })
print(total)

////////

let s : String? = ""

if let str = s {
    print(s)
}
