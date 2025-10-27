//
//  ScrollViewBasic3.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct ScrollViewBasic3: View {
    var body: some View {
        // 3번 - 혼합
        
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ScrollViewBasic3()
}
