//
//  DarkMode.swift
//  SwiftUIBasics
//
//  Created by yoonie on 11/20/25.
//

import SwiftUI

struct DarkModeBasic: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    // primary and secondary color는 자동으로 다크모드일때 색 변환됨
                    Text("Primary 색상")
                        .foregroundStyle(.primary)
                    Text("Secondary 색상")
                        .foregroundStyle(.secondary)
                    // 일반적인 black, white는 고정값임\
                    Text("Black Color")
                        .foregroundStyle(.black)
                    Text("White Color")
                        .foregroundStyle(.white)
                    Text("Red Color")
                        .foregroundStyle(.red)
                    // Asset에서 color set을 만든 후 light, dark mode에서 색을 설정할 수 있음
                    Text("ASSET에서 AdaptiveColor 색 설정")
                        .foregroundStyle(Color("AdaptiveColor"))
                    // @Environment(기본 설정값)를 사용해서 colorScheme 사용하기
                    Text("@Environment를 사용해서 colorScheme 사용하기")
                        .foregroundStyle(colorScheme == .light ? .indigo : .blue)
                }
            }
        }
    }
}

#Preview {
    DarkModeBasic()
}
