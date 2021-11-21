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
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .padding(10)
                .foregroundColor(.red)
            Text("Hello there!")
            
        }
    }
}
 
