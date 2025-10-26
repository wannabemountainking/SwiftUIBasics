//
//  ShapeBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/25/25.
//

import SwiftUI

struct ShapeBasic1: View {
    var body: some View {
        VStack(spacing: 20) {
            // Circle 원형
            Text("원형")
                .font(.title)
            Circle()
//                .fill(Color.blue) // 상단 fill > foregroundStyle > 하단
//                .foregroundStyle(.pink)
//                .stroke(Color.red, lineWidth: 20)
//                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30, 20, 10]))
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.purple, lineWidth: 50)
                .frame(width: 200, height: 100, alignment: .center)
                .padding()
            
            // Ellipse 타원형
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(Color.green)
                .frame(width: 200, height: 100, alignment: .center)
            
            // Capsule 캡슐형
            Text("켑슐형")
                .font(.title)
            Capsule(style: .circular)
                .stroke(Color.blue, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
        }
    }
}

#Preview {
    ShapeBasic1()
}

