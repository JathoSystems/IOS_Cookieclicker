//
//  ContentView.swift
//  Test
//
//  Created by Thomas Versteeg on 04/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding(3.0)
            Image("Cookie")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Thomas!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
