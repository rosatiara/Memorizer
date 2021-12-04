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
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card( content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))

        }
    }
    
//   MemoryGame.Card
    struct Card: Identifiable {
        
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int // unique identifier
    }
}
