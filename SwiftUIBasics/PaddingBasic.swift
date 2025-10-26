//
//  PaddingBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // 1. Padding 기본값과 성질(CSS의 padding, margin 성격이 섞임)
            Text("Hello SwiftUI")
                .background(Color.yellow)
                .padding() // == .padding(.all, 15)
                .background(Color.blue)
                .padding(.leading, 20) // CSS 기준 padding
                .background(Color.green)
                .padding(.bottom, 20) // CSS 기준 margin
                .background(Color.purple)
            
            Divider()
            
            // 2. padding 응용
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .fontDesign(.serif)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in porta sem, a aliquet elit. Nam quis pulvinar magna. Maecenas eu eros arcu. Nunc consequat neque et sagittis volutpat. Sed convallis quam quis risus posuere dignissim. Praesent magna sem, lacinia interdum lectus eget, molestie varius est. Vestibulum hendrerit quam vitae lorem hendrerit, vitae faucibus sapien placerat. Quisque vestibulum in erat sit amet pulvinar. Morbi non orci orci.")
        }
        // VStack 밖에서 padding 설정 -> 여러 장식이 가능
        .padding()
        .padding(.vertical, 50)
        .background(
//            Color.white
//                .cornerRadius(30)
//                .shadow(
//                    color: Color.black.opacity(0.3),
//                    radius: 10,
//                    x: 10,
//                    y: 10
//                )
            Color(uiColor: UIColor.systemGray5)
                .clipShape(
                    UnevenRoundedRectangle(
                        topLeadingRadius: 0,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 30,
                        topTrailingRadius: 0
                    )
                )
                .shadow(
                    color: Color.black.opacity(0.4),
                    radius: 10,
                    x: 10,
                    y: 10
                )
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
