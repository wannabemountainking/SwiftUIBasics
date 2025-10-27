//
//  LazyHGridBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct LazyHGridBasic2: View {
    var body: some View {
        // LazyHGrid
        // title 을 1000개 변수를 생성
        // ["목록 1" , ...]
        let title: [String] = Array(1...1000).map { "목록 \($0)" }
        // 화면 그리드 형식으로 채워줌
        let layout: [GridItem] = [
            GridItem(.flexible(maximum: 80)),
            GridItem(.flexible(maximum: 80)),
            GridItem(.flexible(maximum: 80)),
            GridItem(.flexible(maximum: 80)),
            GridItem(.flexible(maximum: 80)),
            GridItem(.flexible(maximum: 80)),
            GridItem(.flexible(maximum: 80)),
            GridItem(.flexible(maximum: 80))
        ]
        
        //LazyHGrid
        // ScrollView horizontal
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(Color.yellow)
                            .frame(height: 30)
                        Text(item)
                            .foregroundStyle(Color.blue)
                    }
                }
            }
        }
    }
}

#Preview {
    LazyHGridBasic2()
}
