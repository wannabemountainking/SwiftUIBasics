//
//  FrameBasic2.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct FrameBasic2: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, Boys")
                .font(.title)
                .background(Color.pink)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.red)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
        }
    }
}

#Preview {
    FrameBasic2()
}
