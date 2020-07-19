import UIKit

let setA : Set = Set(1...3)
let setB : Set = [1,2,3]

print(setA == setB)


enum E: String {
    case a = "a"
}

let e: E = .a
print(e.rawValue)

let array = [1,2,3,4]

array.map {
    print("ddd")
    if $0>0 {return}
}
