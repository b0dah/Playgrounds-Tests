import Cocoa

var dict = [1:8, 2:1, 8:4]

let sortedDict = dict.sorted {$0.1 < $1.1}
//let sortedDict = dict.keys.sorted( by: { (firstKey, secondKey) -> Bool in
//    return dict[firstKey] < dict[secondKey]
//})

print(sortedDict)
