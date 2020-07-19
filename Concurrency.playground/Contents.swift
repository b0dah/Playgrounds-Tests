import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//let serialQueue = DispatchQueue(label: "serial")
//
//print("ssss")
//
//serialQueue.async {
//    sleep(2)
//    print("1 finished")
//}
//
//serialQueue.async {
//    sleep(2)
//    print("2 finished")
//}
//
//print("jjj")


let concurrentQueue = DispatchQueue(label: "concurrent", attributes: .concurrent)

print("ssss")

concurrentQueue.async {
    sleep(2)
    print("1 finished")
}

concurrentQueue.async {
    sleep(2)
    print("2 finished")
}

print("jjj")




