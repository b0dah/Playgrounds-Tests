//import UIKit
//
//let a = [1,2,3,5]
//a.forEach {print($0)}
//a.map {print($0)}
//
//print()
//a.forEach {
//    if !$0.isMultiple(of: 2) {print("\($0) is odd")}
//}

// MARK:-

var a = [4,56,3,2,1,4,0]
selectionSort(&a)
print(a)

func selectionSort(_ a: inout [Int]) {
    
    for i in 0...a.count-2 {
        var minIndex = i;
        for j in i+1...a.count-1 {
            if a[j] < a[minIndex] {
                minIndex = j
            }
        }
        a.swapAt(i, minIndex)
    }
}

extension Array where Element == Int {
    mutating func selectionSort() {
        
        for i in 0...self.count-2 {
            var minIndex = i
            for j in i+1...self.count-1 {
                if self[j] < self[minIndex] {
                    minIndex = j
                }
            }
            self.swapAt(i, minIndex)
        }
    }
}

var newArray = [320,200, 2300, 3, 003, 30]
newArray.selectionSort()
print(newArray)

/////////////
extension Array where Element == Int {
    mutating func bubbleSort() {
        let n = self.count
        
        for i in 0...n - 2 {
            for j in 1...n - i - 1 {
                if self[j-1] > self[j] {
                    self.swapAt(j-1, j)
                }
            }
        }
    }
}

print("Bubble Sort")
var arrayToSort = [3,1,1,1,5,6,7,86,5,5,4,0,8]
arrayToSort.bubbleSort()
print(arrayToSort)
