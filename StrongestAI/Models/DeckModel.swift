//
//  DeckModel.swift
//  StrongestAI
//
//  Created by Kushboo Patel on 6/6/22.
//

import Foundation

class DeckModel
{
    
        var deck: [CardModel]
        
        init() {
           
            deck = []
        }
        
        func createDeck() {
        
            for suit in CardSuits.allCases {
                
                for value in CardValue.allCases {
                    deck.append(CardModel(value: value, suit: suit ))
                    }
                
            }
        }
        
        
        
        func shuffleDeck() {
            
            deck.shuffle()
            
        }
        
    
}

