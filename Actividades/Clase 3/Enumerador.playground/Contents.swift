
import UIKit



//Creación de enumerador

enum LunchChoice{
    case pasta
    case burger
    case soup
    case fish
    case uno,dos,tres
}

var foodEnum = LunchChoice.burger
foodEnum = LunchChoice.fish
//Ya sabe de qué tipo es ... se puede inferir.
foodEnum = .burger


if foodEnum == .soup{
    "🍜"
}
else if foodEnum == .fish{
    "🐟"
}
else if foodEnum == .burger{
    "🍔"
}
else{
    "No me gustó lo que seleccionaste"
}


//CASE
func cookLunch(_ choice: LunchChoice) -> String{
    switch choice {
        case .burger:
            return "Hmm hamburguesa 7u7"
        case .soup,.fish:
            return "Sopica o pececico"
        default:
            return "Todo lo demás"
    }
}

cookLunch(foodEnum)



enum Suit{
    case spades, hearts, diamonds, clubs
    var rank: Int{
        switch self {
        case .spades:
            return 4
        case .hearts:
            return 3
        case .diamonds:
            return 2
        case .clubs:
            return 1
        }
    }
    func beats(_ otherSuit: Suit) -> Bool {
        return self.rank > otherSuit.rank
    }
}

var mySuit: Suit = .clubs
var yourSuit: Suit = .diamonds
mySuit.rank > yourSuit.rank























