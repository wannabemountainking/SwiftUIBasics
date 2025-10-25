//
//  ShapeBasic2.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct ShapeBasic2: View {
    var body: some View {
        VStack(spacing: 20) {
            // 직사각형
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100, alignment: .center)
            
            // 둥근 직사각형
            Text("둥근 직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4, to: 1.0)
                .frame(width: 300, height: 200, alignment: .center)
        }
    }
}

#Preview {
    ShapeBasic2()
}
