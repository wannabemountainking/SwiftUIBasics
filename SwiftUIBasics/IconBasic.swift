//
//  IconBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // sf symbol은 systemName으로
            Image(systemName: "person.fill.badge.plus")
                .resizable()
            // renderingMode에서 original을 쓰면 실제 color에서 multicolor로 변경됨.
            // 즉, 고유 값 컬러로 변경되어서 color를 변경해도 변경되지 않는 컬러 값이 됨
                .renderingMode(.original)
                .scaledToFill()
                .foregroundStyle(Color.pink)
                .frame(width: 300, height: 300)
        }
        
    }
}

#Preview {
    IconBasic()
}
