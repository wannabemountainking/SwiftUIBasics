//
//  SpacerBasic2.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct SpacerBasic2: View {
    var body: some View {
        // 2번 - App 상단 설정 닫기 아이콘 만들기
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundStyle(Color.blue)
                Spacer()
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .foregroundStyle(Color.blue)
            }
            .padding()
            Spacer()
        }
        
    }
}

#Preview {
    SpacerBasic2()
}
