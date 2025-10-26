//
//  GradientBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        // Linear Gradient
        Text("Linear Gradient")
            .font(.title2)
        RoundedRectangle(cornerRadius: 25)
            .fill(
                LinearGradient(
                    colors: [.red, .blue],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .frame(width: 300, height: 200)
        // Radial Gradient
        Text("Radial Gradient")
            .font(.title2)
        RoundedRectangle(cornerRadius: 25)
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.yellow, .purple]),
                    center: .center,
                    startRadius: 50,
                    endRadius: 90
                )
            )
            .frame(width: 300, height: 200)
        // Angular Gradient
        Text("Angular Gradient")
            .font(.title2)
        RoundedRectangle(cornerRadius: 25)
            .fill(
                AngularGradient(
                    gradient: Gradient(colors: [.blue, .green]),
                    center: .center,
                    angle: .degrees(180)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBasic()
}
