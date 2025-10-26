//
//  ZStackAndBackground.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct ZStackAndBackground: View {
    var body: some View {
        // TODO: ZStack을 사용해서 원에 1 표현 - layer가 복잡할 때 사용하면 좋음
        ZStack(alignment: .center) {
            Circle()
                .frame(width: 100, height: 100)
            Text("1")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
        }
        .padding()
        
        Divider()
        
        // TODO: Background를 사용해서 원에 1 표현 - layer가 단순할 때 추천
        Text("1")
            .padding()
            .font(.largeTitle)
            .foregroundStyle(Color.white)
            .frame(width: 100, height: 100)
            .background(
                Circle()
            )
            .padding()
    }
}

#Preview {
    ZStackAndBackground()
}
