//
//  CardModel.swift
//  StrongestAI
//
//  Created by Kushboo Patel on 6/6/22.
//

import Foundation

enum CardSuits: String, CaseIterable {
    
    
    case Spades = "2660"
    case Hearts = "2665"
    case Clubs = "2666"
    case Diamonds = "2663"
   
    var description: String {
            return self.rawValue
        }
}

enum CardValue: Int, CaseIterable {
    case ace = 1, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
   // case jack, queen, king, ace
    var description: Int {
            return self.rawValue
        }
}


class CardModel: NSObject
{
    var cardValue: CardValue
    var cardSuit: CardSuits
    
        
    init(value: CardValue, suit: CardSuits )
        {
            self.cardValue = value
            self.cardSuit = suit
            
        }
        
        func cardName() {
            print("\(cardValue) of \(cardSuit)")
        }
}


/*    ///init the card value
init(card_heart : [CardModel])
{
    var card_type : Int = 0
    var card_counter : Int = 13
    for i in 0 ..< card_counter
    {
        let card = CardModel()
        card.cardvalue = i + 1 as NSNumber
        switch card_type
        {
    case 0 :
        card.cardtype = "heart"
        self.card_heart.append(card)
        break
    case 1 :
        card.cardtype = "spade"
        self.card_spade.append(card)
        break
    case 2 :
        card.cardtype = "club"
        self.card_club.append(card)
        break
    case 3 :
        card.cardtype = "diamond"
        self.card_diamond.append(card)
        break
    default:
        break
        }
        if i == 12{card_counter = 0}
    card_type = card_type + 1
        if card_type == 3
        {
            break
        }
    }
}
*/
