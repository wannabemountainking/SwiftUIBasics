//
//  ToggleBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/15/25.
//

import SwiftUI

struct ToggleBasic: View {
    @State private var toggleIsOn : Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("로그인 상태:")
                Text(toggleIsOn ? "온라인" : "오프라인")
            }//: HStack
            
            Toggle(isOn: $toggleIsOn) {
                Text("로그인 상태 선택")
            }//: Toggle
            .tint(.red)
            Spacer()
        }
        .padding(.horizontal, 100)
        .font(.title3)
        .fontWeight(.bold)
        
    }
}

#Preview {
    ToggleBasic()
}
