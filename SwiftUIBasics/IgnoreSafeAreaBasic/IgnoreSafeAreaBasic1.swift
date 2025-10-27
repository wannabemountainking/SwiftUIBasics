//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct IgnoreSafeAreaBasic1: View {
    var body: some View {
        // 1번 화면
        ZStack {
            // background
            Color.blue.ignoresSafeArea()
            // content
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    IgnoreSafeAreaBasic1()
}
