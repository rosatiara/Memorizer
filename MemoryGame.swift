//
//  MemoryGame.swift
//  learn1 (iOS)
//
//  Created by T on 27/11/21.
// This is the Model of our application. All the logics for our game is here.

import Foundation
struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
//   MemoryGame.Card
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent // this is a dontcare or generics
    }
}
