//
//  ContentView.swift
//  Shared
//
//  Created by T on 19/11/21.
//

import SwiftUI

// ContentView is just the name of the structure. It can be whatever name you want.
struct ContentView: View {
    var emojis = ["🐴","🐿","🦔","🍪","🦉","🐌","🐒","🫔","🥐","🥔","🍞","🍔","🐌","🪳","🥨","🍘","🏀","🥜"]
    @State var cardCount = 6
    var body: some View {
        // Create a row with HStack (horizontal stack)
        VStack {
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(emojis[0..<cardCount], id: \.self) {
                    emoji in CardView(content: emoji)
                }
            }
            Spacer(minLength: 10.0)
            HStack {
                remove
                Spacer()
                add
            }
        }
        .padding(15)
        .foregroundColor(.brown)
        if cardCount == 0 {
            
        }
    }
    
    var remove: some View {
        Button(action: {
            if cardCount > 1 {
                cardCount -= 1
            }
        }, label: {
            VStack {
                Text("Remove")
                Text("Card")
            }
        })
    }
    
    var add: some View {
        Button(action: {
            if cardCount < emojis.count {
                cardCount += 1
            }
        }, label: {
            VStack {
                Text("Add")
                Text("Card")
            }
        })
    }
    
}

// ZStack is just stacking one element and another. The first element will be the lowest level of stack.
struct CardView: View {
    var content: String
   @State var isFaceUp: Bool = true
     var body: some View {
        // local variable for rectangle
        let card = RoundedRectangle(cornerRadius: 8)

        ZStack {
            if isFaceUp {
                card.foregroundColor(.white)
                card.stroke(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            }
            else {
                card.foregroundColor(.brown)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}



// automatic preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // for dark mode
            ContentView()
                .preferredColorScheme(.dark)
            
            // light mode
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
