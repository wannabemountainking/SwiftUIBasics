//
//  AnimationBasic2.swift
//  SwiftUIBasics
//
//  Created by yoonie on 10/30/25.
//

import SwiftUI

struct AnimationBasic2: View {
    
    @State private var isAnimated: Bool = false
    let timing: TimeInterval = 5.0
    
    var body: some View {
        VStack {
            // 2번 뷰: speed에 따른 animation
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            
            // linear animation: 처음부터 끝까지 속도가 일정
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimated ? 350 : 50,
                    height: 100
                )
                .animation(
                    Animation.linear(duration: timing),
                    value: isAnimated
                )
            
            // easeIn animation: 처음에 느렸다가 끝에 빨라지는 효과 -> 들어갈때 천천히(easyIn)
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimated ? 350 : 50,
                    height: 100
                )
                .animation(
                    Animation.easeIn(duration: timing),
                    value: isAnimated
                )
            
            // easeOut animation: 처음엔 빨랐다가 끝에 느려지는 효과 -> 나갈때 천천히 (easyOut)
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimated ? 350 : 50,
                    height: 100
                )
                .animation(
                    Animation.easeOut(duration: timing),
                    value: isAnimated
                )
            
            // easeInOut animation: 처음과 끝에 느렸다가 중간부분이 빨라지는 효과 -> 나갈 때와 들어갈 때 천천히
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimated ? 350 : 50,
                    height: 100
                )
                .animation(
                    Animation.easeInOut(duration: timing),
                    value: isAnimated
                )
        }
    }
}

#Preview {
    AnimationBasic2()
}
