//
//  ContentView.swift
//  Test
//
//  Created by Thomas Versteeg on 04/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State var timesClicked: Int = 0
    var body: some View {
        NavigationView() {
            VStack {
                Button (
                    action: {
                        print("Clicked the cookie")
                        timesClicked += 1
                    },
                    label: {
                        Image("Cookie")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                )
                Text("You clicked the cookie \(timesClicked) times")
                NavigationLink(destination: CreditView()) {
                    Text("Credits")
                }
                NavigationLink(destination: StoreView()) {
                    Text("Store")
                }
                .padding()
            }
            .padding()
            .navigationBarTitle("Cookie Clicker")
        }
        .navigationTitle(Text("Cookie Clicker"))
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
