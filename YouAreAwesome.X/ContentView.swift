//
//  ContentView.swift
//  YouAreAwesome.X
//
//  Created by Ross Morton on 12/10/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "I am a Programmer"                                        // struct is immutable - need @State to mutate
                                                                                            // view is redrawn when variable changes (Declarative)
    var body: some View {
        
        VStack {
             Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
             
            Button("Click Me!") {
                message = "Awesome!"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
 
