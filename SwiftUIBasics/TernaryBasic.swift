//
//  TernaryBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/29/25.
//

import SwiftUI

struct TernaryBasic: View {
    //property
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            // 1. if else 조건문
            Button {
                isStartingState.toggle()
            } label: {
                Text("if else 버튼: \(isStartingState.description)")
            }
            
            if isStartingState {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
            }
            
            // 2. ternary 조건문
            Button {
                isStartingState.toggle()
            } label: {
                Text("ternary 버튼: \(isStartingState.description)")
            }
            
            Text(isStartingState ? "파랑" : "빨강")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.cyan : Color.purple)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 100
                )
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBasic()
}
