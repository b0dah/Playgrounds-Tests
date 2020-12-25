import UIKit

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = ((lastRandom*a+c).truncatingRemainder(dividingBy: m))
        return lastRandom / m
    }
}

// Class (ИгральнаяКость)
class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        Int(generator.random() * Double(sides)) + 1
    }
}

// MARK: - Control flow
var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())

for _ in 1...5 {
    print("random dice roll is \(d6.roll())")
}

// MARK:- Next: Collection of Protocol Types
protocol TextRespresentable {
    var textualDescription: String { get }
}

struct Hamster {
    let name: String
    var textualDescription: String {
        "A hamster named \(self.name)"
    }
}
extension Hamster: TextRespresentable {}

extension Dice: TextRespresentable {
    var textualDescription: String {
        "A \(self.sides)-sided dice"
    }
}

/// collection itself
let textRepresentableThings: [TextRespresentable] = [d6, Hamster(name: "Simon")]
print("\nThings Collection here:")
for thing in textRepresentableThings {
    print(thing.textualDescription)
}
