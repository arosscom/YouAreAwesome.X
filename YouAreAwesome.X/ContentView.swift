//
//  ContentView.swift
//  YouAreAwesome.X
//
//  Created by Ross Morton on 12/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
             Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You are Awesome !")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
 
