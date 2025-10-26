//
//  FrameBasic1.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct FrameBasic1: View {
    var body: some View {
        VStack(spacing: 20) {
            // 1
            Text("Hello World!")
                .font(.title)
                .background(Color.green)
                .frame(width: 200, height: 200)
                .background(Color.red)
            
            Divider()
            //2
            Text("Hello World! Again")
                .font(.title)
                .background(Color.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
        }
    }
}

#Preview {
    FrameBasic1()
}
