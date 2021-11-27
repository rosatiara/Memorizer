//
//  ContentView.swift
//  Shared
//
//  Created by T on 19/11/21.
//

import SwiftUI

// ContentView is just the name of the structure. It can be whatever name you want.
struct ContentView: View {
    var emojis = ["🐴","🐿","🦔","🍪","🦉","🐌","🐒","🫔","🥐","🥔","🍞","🍔","🥮","🪳","🥨","🍘","🏀","🥜","🥠","🥃", "🪐"]
    @State var cardCount = 20
    var body: some View {
        // Create a row with HStack (horizontal stack)
        VStack {
            // make it scrollable
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))]) {
                    ForEach(emojis[0..<cardCount], id: \.self) {
                        emoji in CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
//            Spacer(minLength: 10.0)
//            HStack {
//                remove
//                Spacer()
//                add
//            }
        }
        .padding(15)
        .foregroundColor(.brown)
       
    }
    
//    var remove: some View {
//        Button(action: {
//            if cardCount > 1 {
//                cardCount -= 1
//            }
//        }, label: {
//            Text("-")
//                .font(.system(size: 40))
//        }).padding()
//    }
//
//    var add: some View {
//        Button(action: {
//            if cardCount < emojis.count {
//                cardCount += 1
//            }
//        }, label: {
//            Text("+")
//                .font(.system(size: 40))
//        }).padding()
//    }
    
}

// ZStack is just stacking one element and another. The first element will be the lowest level of stack.
struct CardView: View {
    var content: String
   @State var isFaceUp: Bool = false
     var body: some View {
        // local variable for rectangle
        let card = RoundedRectangle(cornerRadius: 8)

        ZStack {
            if isFaceUp {
                card.foregroundColor(.white)
                card.strokeBorder(lineWidth: 3)
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
            // dark mode
            ContentView()
                .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portraitUpsideDown)
            
            // light mode
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
