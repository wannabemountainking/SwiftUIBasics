//
//  SliderBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/20/25.
//

import SwiftUI

struct SliderBasic: View {
    @State private var sliderValue: Double = 3
    @State private var color: Color = Color.white
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                HStack(spacing: 5) {
                    Text("레벨:")
                    Text("\(sliderValue)")
                    Text(String(format: "%.1f", sliderValue))
                }//: HStack
                .foregroundStyle(color)
                .font(.title2)
                .fontWeight(.semibold)
                // value는 항상 float (double) Int가 아닌 Float 타입으로 설정
                // in : 슬라이더의 범위 설정
                // step: 단계 설정. 슬라이더가 어떤 단위로 증가 감소 되는 지 설정
                // onEditingChanged: slider의 값이 변경되면 처리할 이벤트
                // 최소 최대 값 라벨
                Slider(
                    value: $sliderValue,
                    in: 1.0 ... 10.0,
                    step: 1.0,
                    onEditingChanged: { _ in
                        switch sliderValue {
                        case 1, 2: color = .red
                        case 3, 4: color = .yellow
                        case 5, 6: color = .green
                        case 7, 8: color = .blue
                        case 9, 10: color = .indigo
                        default: color = .purple
                        }
                    },
                    minimumValueLabel: Text("1"),
                    maximumValueLabel: Text("10"),
                    label: {
                        Text("라벨")
                    })
                    .accentColor(color)
                    .padding(.horizontal, 30)
            }//: VStack
        }//: ZStack
    }//: body
}

#Preview {
    SliderBasic()
}
