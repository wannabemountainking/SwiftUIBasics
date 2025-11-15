//
//  ColorPickerBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/15/25.
//

import SwiftUI

struct ColorPickerBasic: View {
    @State private var backgroundColor: Color = .green
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(
                selection: $backgroundColor,
                supportsOpacity: true) {
                    Text("원하는 색상을 고르세요 ")
                }
                .padding(30)
                .background(Color.black)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
                .font(.title3)
                .padding(.horizontal, 50)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ColorPickerBasic()
}
