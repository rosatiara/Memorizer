//
//  learn1App.swift
//  Shared
//
//  Created by T on 19/11/21.
//

import SwiftUI

@main
struct learn1App: App {
    // creating the game
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
