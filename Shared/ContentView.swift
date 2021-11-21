//
//  ContentView.swift
//  Shared
//
//  Created by T on 19/11/21.
//

import SwiftUI

// ContentView is just the name of the structure. It can be whatever name you want.
struct ContentView: View {
    
    var body: some View {
        // Create a row with HStack (horizontal stack)
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(15)
        .foregroundColor(.red)
    }
    
}

// ZStack is just stacking one element and another. The first element will be the lowest level of stack.
struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
//                .background(.yellow) // debug
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3.5)
//                .background(.blue) // debug
            Text("🙉")
                .font(.largeTitle)
        }
    }
}
 
// Preview
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
