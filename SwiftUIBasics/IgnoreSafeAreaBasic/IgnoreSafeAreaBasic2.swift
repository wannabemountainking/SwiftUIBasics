//
//  IgnoreSafeAreaBasic2.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct IgnoreSafeAreaBasic2: View {
    var body: some View {
        // 2번 화면
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index) 번 리스트")
                        )
                }
            }
        }
        .background(
            Color.blue.ignoresSafeArea()
        )
    }
}

#Preview {
    IgnoreSafeAreaBasic2()
}
