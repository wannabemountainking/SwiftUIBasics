//
//  ScrollViewBasic1.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct ScrollViewBasic1: View {
    var body: some View {
        // 1번 - 세로 스크롤
        ScrollView(.vertical) {
            ForEach(0..<50) { index in
                Rectangle()
                    .fill(Color.indigo)
                    .frame(height: 300)
                    .overlay(
                        Text("\(index + 1) 번")
                            .font(.largeTitle)
                            .foregroundStyle(Color.white)
                    )
                    .padding(.horizontal, 15)
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ScrollViewBasic1()
}
