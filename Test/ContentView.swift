//
//  ContentView.swift
//  Test
//
//  Created by Thomas Versteeg on 04/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State var timesClicked: Int = 0
    @State var cookieMultiplier: Double = 1
    @State var grandmaAmount: Int = 0
    @State var isShowingSheet: Bool = false
    func GrandmaLoop() -> Void {
        while true {
            timesClicked += grandmaAmount
            Thread.sleep(forTimeInterval: 1)
        }
    }
    var body: some View {
        NavigationView() {
            VStack {
                Button (
                    action: {
                        print("Clicked the cookie")
                        timesClicked += Int(round(1 * cookieMultiplier))
                    },
                    label: {
                        Image("Cookie")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                )
                Text("You clicked the cookie \(timesClicked) times")
                HStack {
                    NavigationLink(destination: CreditView()) {
                        Text("Credits")
                    }
                    .padding()
                    Button(
                        "Store",
                        action: {
                            print("Clicked Store Button")
                            isShowingSheet = true
                        }
                    )
                    .padding()
                }

            }
            .padding()
            .navigationBarTitle("Cookie Clicker")
            .sheet(
                isPresented: $isShowingSheet,
                content: {
                    StoreView(
                        timesClicked: $timesClicked,
                        cookieMultiplier: $cookieMultiplier,
                        grandmaAmount: $grandmaAmount
                    )
                }
            )
        }
        .navigationTitle(Text("Cookie Clicker"))
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
