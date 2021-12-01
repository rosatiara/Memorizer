#  MemoryGame NOTES (Model)
//
//  MemoryGame.swift
//  learn1 (iOS)
//
//  Created by T on 27/11/21.
// This is the Model of our application. All the logics for our game is here.

import Foundation
struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards * 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            // create a function called createCardContent so cardContent can be used (bcs it's generics)
            // let content: CardContent = createCardContent(pairIndex)
            // the line above can be written as
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))

        }
    }
    
//   MemoryGame.Card
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent // this is a dontcare or generics
    }
}


