//
//  TextBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/25/25.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 30) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            // Font 사이즈를 title, body, footnote 등으로 정하면 각 기기에 맞게 responsive하게 변화함
                .font(.title)
                .fontWeight(.ultraLight)
                .underline(true, pattern: .solid, color: Color.green)
                .italic(true)
                .strikethrough(true, pattern: .dash, color: Color.red)
            // 숫자를 바로 넣어서 text 크기를 지정할 수 있음. font 12 등, 단 크기가 완전 고정해서 responsive하지 않음
            Text("Hello World2".uppercased())
                .font(.system(size: 25, weight: .semibold, design: .serif))
            // multiline text alignment
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다 .")
                .multilineTextAlignment(.leading)
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    TextBasic()
}
