//
//  AnimationBasic3.swift
//  SwiftUIBasics
//
//  Created by yoonie on 10/30/25.
//

import SwiftUI

struct AnimationBasic3: View {
    
    @State private var isAnimated: Bool = false
    let timing: TimeInterval = 5.0
    
    var body: some View {
        // 3번 뷰: Spring animation
        VStack {
            Button {
                // Animation.spring()의 메개변수
                // response: 단일 진동을 완료하는 데 걸리는 시간
                // dampingFraction: 얼마나 빠르게 spring이 정지하는 속도제어. 0일때 영원히 에니메이션 지속. 1인 경우 spring 효과 반영안됨 0 ~ 1
                // blendDuration: 다른 에니메이션 간의 전환 길이 제어. 필수값 아니어서 보통 0으로 두면 됨.
                withAnimation(
                    Animation
                        .spring(
                            response: 0.5,
                            dampingFraction: 0.5,
                            blendDuration: 0
                        )) {
                            isAnimated.toggle()
                        }
            } label: {
                Text("Button")
            }
            
            RoundedRectangle(cornerRadius: 25)
                .frame(
                    width: isAnimated ? 350 : 50,
                    height: 100
                )
        }
        
        
    }
}

#Preview {
    AnimationBasic3()
}
