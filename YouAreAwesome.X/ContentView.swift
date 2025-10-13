//
//  ContentView.swift
//  YouAreAwesome.X
//
//  Created by Ross Morton on 12/10/2025.
//

import SwiftUI

struct ContentView: View {
    
    
    private var button1Text = "Awesome"
    private var button2Text = "Great"

    @State private var message = "I am a Programmer"                                        // struct is immutable - need @State to mutate
                                                                                            // view is redrawn when variable changes (Declarative)
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            HStack {
                Button(button1Text) {
                    message = button1Text+"!"

                }
                Button(button1Text) {
                    message = button2Text+"!"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
    
        .padding()
    }
}

#Preview {
    ContentView()
}
 
