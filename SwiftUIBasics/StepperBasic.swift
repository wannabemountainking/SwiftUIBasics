//
//  StepperBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/20/25.
//

import SwiftUI

struct StepperBasic: View {
    @State private var stepperValue: Int = 0
    @State private var widthOffset: CGFloat = 0
    private var rectangleBackground: Color {
        switch widthOffset {
        case 0 ..< 50.0 : Color.gray
        case 50.0 ..< 100.0 : Color.indigo
        case 100.0 ..< 150.0: Color.blue
        case 150.0 ..< 200.0: Color.green
        case 200.0 ..< 250.0: Color.yellow
        case 250.0 ..< 300.0: Color.orange
        case 300.0 ..< 350.0: Color.pink
        default: Color.purple
        }
    }
    var body: some View {
        
        ZStack {
            Color.gray.opacity(0.8).ignoresSafeArea()
            VStack(spacing: 50) {
                Text("기본 Stepper 값: \(stepperValue)")
                Stepper("Stepper를 사용해보세요", value: $stepperValue)
                
                Rectangle()
                    .fill(rectangleBackground)
                    .frame(width: 10 + widthOffset, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: widthOffset < 100 ? 10 : 20))
                
                Stepper("직사각형 너비 변화") {
                    //증가
                    changeWidth(amount: 10)
                } onDecrement: {
                    //감소
                    changeWidth(amount: -10)
                }

            }//: VStack
            .font(.title2)
            .fontWeight(.semibold)
            .padding(.horizontal, 30)
        }//: ZStack
    }
    func changeWidth(amount: CGFloat) {
        withAnimation(.bouncy) {
            widthOffset += amount
        }
    }
}

#Preview {
    StepperBasic()
}
