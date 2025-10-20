//
//  ContentView.swift
//  YouAreAwesome.X
//
//  Created by Ross Morton on 12/10/2025.
//

import SwiftUI

struct ContentView: View {
        
    @State private var toggle = false
    @State private var message = ""                                         // struct is immutable - need @State to mutate
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        
        // Examples of Annotations:
        // TODO: this
        // MARK: this other
        // FIXME: - this also -
        
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
              
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Spacer()
                                                                                                        
            Button("Show Message") {
                let message0 = "You are Awesome!"
                let message1 = "You are Great!"

                message = ( message == message0 ? message1 : message0)
                imageNumber += 1
                if imageNumber > 9 {
                    imageNumber = 0
                }
                imageName = "image\(imageNumber)"
             }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
                                                                                                          
    }
}

#Preview {
    ContentView()
}
 
