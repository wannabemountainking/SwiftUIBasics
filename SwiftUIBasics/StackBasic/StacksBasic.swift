//
//  StacksBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct StacksBasic: View {
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 600)
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                Rectangle()
                    .fill(Color.teal)
                    .frame(width: 150, height: 150)
                HStack(alignment: .bottom, spacing: 10) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 70, height: 70)
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 30, height: 30)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
        
        
    }
}

#Preview {
    StacksBasic()
}
