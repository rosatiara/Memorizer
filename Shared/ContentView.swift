//
//  ContentView.swift
//  Shared
//
//  Created by T on 19/11/21.
//

import SwiftUI

// ContentView is just the name of the structure. It can be whatever name you want.
struct ContentView: View {
    var emojis = ["🐴","🐿","🦔","🍪","🦉","🐌","🐒","🫔","🥐"]
    var body: some View {
        // Create a row with HStack (horizontal stack)
        
            HStack {
                ForEach(emojis[0..<9], id: \.self) {
                    emoji in CardView(content: emoji)
                }
            }
        .padding(15)
        .foregroundColor(.brown)
    }
    
}

// ZStack is just stacking one element and another. The first element will be the lowest level of stack.
struct CardView: View {
    var content: String
   @State var isFaceUp: Bool = false
     var body: some View {
        // local variable for rectangle
        let card = RoundedRectangle(cornerRadius: 10)

        ZStack {
            if isFaceUp {
                card.foregroundColor(.white)
                card.stroke(lineWidth: 3.5)
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
