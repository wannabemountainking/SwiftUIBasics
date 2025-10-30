//
//  TransitionBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/30/25.
//

import SwiftUI

struct TransitionBasic1: View {
    //property
    @State private var showTransition: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack(alignment: .bottom) {
                VStack {
                    Button {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                            showTransition.toggle()
                        }
                    } label: {
                        Text("Toggle Sheet")
                    }
                    .frame(maxWidth: .infinity)
                    
                    Spacer()
                }
                if showTransition {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: geometry.size.height * 0.5)
//                        .opacity(showTransition ? 1.0 : 0.0)
                    // 1번 move transition
//                        .transition(.move(edge: Edge.bottom))
                    // 2번 opacity transition
//                        .transition(.opacity)
                    // 3번 scale transition
//                        .transition(.scale)
                    // 4번 asymetric transition: 시작점과 종료점을 custom으로 정해주기 때문에 비대칭 transition
                        .transition(
                            .asymmetric(
                                insertion: .move(edge: .leading),
                                removal: .move(edge: .trailing)
                            )
                        )
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

#Preview {
    TransitionBasic1()
}


// 1. move: 단방향 이동 Transition
// 2. opacity: 투명도 조절 Transition
// 3. scale: 크기 조절 Transition
// 4. asymmetric: 비대칭 방향 이동 Transition
