//
//  ExtractSubViewBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/28/25.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        ZStack {
            //background
            Color.cyan
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            ItemViewBasic(title: "오렌지", count: 2, color: .orange)
            ItemViewBasic(title: "바나나", count: 5, color: .yellow)
            ItemViewBasic(title: "풋고추", count: 10, color: .blue)
        }
    }
}

#Preview {
    ExtractSubViewBasic()
}
