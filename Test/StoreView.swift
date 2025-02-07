//
//  StoreView.swift
//  Test
//
//  Created by Thomas Versteeg on 07/02/2025.
//

import SwiftUI

struct StoreView: View {
    @Binding var timesClicked: Int
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    StoreView(timesClicked: .constant(0))
}
