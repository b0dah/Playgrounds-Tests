import UIKit

struct BlackjackCard {
    
    // nested Suit enum
    enum Suit: Character {
        case spades = "S", hearts = "H", diamonds = "D", clubs = "C"
    }
    
    // nested Rank enum
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king, ace
        
        struct Values {
            let first: Int
            let second: Int?
        }
        
        var values: Values {
            switch self {
            case .ace:
                return Values(first: 1, second: 11)
            case .jack, .queen, .king:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
    }
        
        
    // BlackjackCard properties and methods
    let rank: Rank, suit: Suit
    
    var description: String {
        var output = "suit is \(suit.rawValue),"
        output += " value is \(rank.values.first)"
        if let second = rank.values.second {
            output += " or \(second)"
        }
        
        return output
    }
    
}

let theAceOfSpades = BlackjackCard(rank: .ace, suit: .spades)
print("the Ace of Spades: \(theAceOfSpades.description)")

// MARK: - referring outside the definition context
print(BlackjackCard.Suit.hearts.rawValue)
