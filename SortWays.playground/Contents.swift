import Cocoa

//var a = [5,3,1]

func swap( f: inout Int, s: inout Int) {
    let temp = f
    f=s
    s=temp
}

//for i in 0...a.count-2 {
//    for j in 0...a.count-i-2 {
//        if a[j]>a[j+1] {
//            a.swapAt(j, j+1)
//        }
//    }
//}
//
//print(a)


// qsort

func partition(A: inout [Int], left: Int, right: Int)-> Int {
    let pivot = A[right]

    var i = left - 1
    
    for j in left..<right {
        if A[j] < pivot {
            i += 1
            A.swapAt(i, j)
        }
        print("i = ", i)
    }
    print(i, "  ", A[i+1], "  ", A[right])
    // swap A[i+1] and A[right]
    let temp = A[i+1]
    A[i+1] = A[right]
    A[right] = temp
    
    return i + 1
}

func quickSort(A: inout [Int], left: Int, right: Int) {
    if left < right {
        let partitionIndex = partition(A: &A, left: left, right: right)
        
        quickSort(A: &A, left: left, right: partitionIndex - 1)
        quickSort(A: &A, left: partitionIndex + 1, right: right)
        
    }
}

var array = [10, 80, 30, 90, 40, 50, 70]
//partition(A: &array, left: 0, right: array.count - 1)
quickSort(A: &array, left: 0, right: array.count - 1)
print(array)
