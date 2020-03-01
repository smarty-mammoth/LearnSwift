import UIKit

//--- Enumerations
enum Rank : Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "Ace"
        case .jack:
            return "Jack"
        case .queen:
            return "Queen"
        case .king:
            return "King"
        default:
            return String(self.rawValue)
        }
    }
}

func compare(a:Rank, b:Rank) -> Int {
    if a.rawValue == b.rawValue { return 0 }
    if a.rawValue < b.rawValue { return -1 }
    if a.rawValue > b.rawValue { return 1 }
    return 0
}

let rank = Rank.ace
let iRank = rank.rawValue
let descr = rank.simpleDescription()
print (compare(a: Rank.ace, b: Rank.jack))


if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}


enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades: return "Spades"
        case .hearts: return "Hearts"
        case .diamonds: return "Diamonds"
        case .clubs: return "Clubs"
        }
    }
    
    func color() -> String{
        switch self {
        case .spades: return "black"
        case .diamonds: return "red"
        }
    }
}
