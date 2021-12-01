#  EmojiMemoryGame NOTES
//
//  EmojiMemoryGame.swift
//  learn1 (iOS)
//
//  Created by T on 27/11/21.
// This is our ViewModel.

import SwiftUI

func makeCardContent(index: Int) -> String {
    return "💥"
}

// because this is our ViewModel, this is gonna be a class.
class EmojiMemoryGame {
    // make it static (static; also called as type property/type variable, in this case.)
   static let emojis = ["🐴","🐿","🦔","🍪","🦉","🐌","🐒","🫔","🥐","🥔","🍞","🍔","🥮","🪳","🥨","🍘","🏀","🥜","🥠","🥃", "🪐"]
    
    // make it static so it can be used inside this class without returning an error (static; type function)
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex]
        }
    }
    
    // calling the createMemoryGame func
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}


