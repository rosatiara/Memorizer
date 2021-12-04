//
//  ContentView.swift
//  Shared
//
//  Created by T on 19/11/21.
//

import SwiftUI

struct ContentView: View {
    let viewModel: EmojiMemoryGame
    
    @State var cardCount = 20
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))]) {
                    ForEach(viewModel.cards) {
                        card in CardView(card: card).aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
            }
        }
        .padding(15)
        .foregroundColor(.brown)
       
    }
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 8)

        ZStack {
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content)
                    .font(.largeTitle)
            }
            else {
                shape.fill()
            }
        }
    }
}



// automatic preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game =  EmojiMemoryGame()
        Group {
            ContentView(viewModel: game)
                .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portraitUpsideDown)
            ContentView(viewModel: game)
                .preferredColorScheme(.light)
        }
    }
}
