import UIKit

struct Point {
    /// strored property
    var x = 0.0, y = 0.0
}

struct Size {
    /// stored property
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

//--------------------------------
class DataImporter {
    var filename = "data.txt"
    // expensive to initialize class
}

class DataManager {
    lazy var importer = DataImporter()
    var data = String()
}

let manager = DataManager()
manager.data = "some data"

// DataImporter has not yet been created

print(manager.importer.filename)
// created now
