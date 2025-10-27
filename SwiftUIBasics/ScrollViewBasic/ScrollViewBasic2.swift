//
//  ScrollViewBasic2.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct ScrollViewBasic2: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(1..<51) { index in
                    Rectangle()
                        .fill(Color.indigo)
                        .frame(width: 300, height: 300)
                        .overlay {
                            Text("\(index) 번")
                                .font(.title)
                                .foregroundStyle(Color.white)
                        }
                }
            }
        }
        .scrollIndicators(.visible)
    }
}

#Preview {
    ScrollViewBasic2()
}
