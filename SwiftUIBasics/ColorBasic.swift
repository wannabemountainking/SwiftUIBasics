//
//  ColorBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/25/25.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Basic Color 기본 색설정
            Text("Basic Color")
                .font(.largeTitle)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.mint)
                .frame(width: 300, height: 100, alignment: .center)
            
            // Primary Color
            // 자동으로 색모드(라이트 모드, 다크 모드)에서 자동으로 색을 변경해 줌
            Text("Primary Color")
                .font(.largeTitle)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.secondary)
                .frame(width: 300, height: 100)
            
            // UIColor : UIKit에서 사용되는 칼라 값을 사용할 수 있음
            Text("UIColor")
                .font(.largeTitle)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(uiColor: UIColor.secondarySystemFill))
                .frame(width: 300, height: 100)
            
            // Custom color
            Text("Custom Color")
                .font(.largeTitle)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100)

        }
    }
}


#Preview {
    ColorBasic()
}
