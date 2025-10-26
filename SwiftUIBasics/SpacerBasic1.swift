//
//  SpacerBasic1.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct SpacerBasic1: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .frame(width: 50, height: 50)
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
        }
        .background(Color.yellow)
    }
}

#Preview {
    SpacerBasic1()
}
