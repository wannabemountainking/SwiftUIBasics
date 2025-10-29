//
//  ItemBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/28/25.
//

import SwiftUI

struct ItemViewBasic: View {
    // property
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ItemViewBasic(title: "사과", count: 1, color: .red)
}
