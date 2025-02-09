//
//  StoreView.swift
//  Test
//
//  Created by Thomas Versteeg on 07/02/2025.
//

import SwiftUI

struct StoreView: View {
    @Binding var timesClicked: Int
    @Binding var cookieMultiplier: Double
    @Binding var grandmaAmount: Int
    var body: some View {
        VStack {
            Image(systemName: "cart")
                .font(.system(size: 32))
            Text("\(timesClicked)")
        }
        Grid {
            VStack {
                Image("Cookie")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text("Cookie Boost - \(Int(cookieMultiplier))x")
                    .font(.title)
                Text("Earn double cookies")
                    .font(.caption)
                Button(
                    "Buy for \(Int(100*cookieMultiplier)) cookies",
                    action: {
                        if timesClicked >= Int(round((100 * cookieMultiplier))) {
                            timesClicked -= Int(round((100 * cookieMultiplier)))
                            cookieMultiplier += 1
                        }
                    }
                )
                .padding()
            }
            VStack {
                Image("Grandma")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text("Grandma - \(grandmaAmount)")
                    .font(.title)
                Text("Earn 1 cookie per second")
                    .font(.caption)
                Button(
                    "Buy for \((50*grandmaAmount)+100) cookies",
                    action: {
                        let grandmaPrice: Int = (50 * grandmaAmount) + 100
                        if timesClicked >= grandmaPrice {
                            timesClicked -= grandmaPrice
                            grandmaAmount += 1
                        }
                    }
                )
                .padding()
            }
        }
        
    }
}

#Preview {
    StoreView(
        timesClicked: .constant(100),
        cookieMultiplier: .constant(1),
        grandmaAmount: .constant(0)
    )
}
