//
//  AnimationBasic1.swift
//  SwiftUIBasics
//
//  Created by yoonie on 10/29/25.
//

import SwiftUI

struct AnimationBasic1: View {
    
    @State private var isAnimated: Bool = false
    
    var body: some View {
        // 1번 뷰
        VStack {
            Button {
                withAnimation(
                    .default
//                        .repeatCount(5)
//                        .repeatForever()
                        .delay(1.0)
                ) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle.degrees(isAnimated ? 360 : 0))
                .offset(
                    y: isAnimated ? 300 : 0
                )
            
            Spacer()
        }

    }
}

#Preview {
    AnimationBasic1()
}
