//
//  ExtractViewBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/28/25.
//

import SwiftUI

struct ExtractViewBasic: View {
    
    @State var backgroundColor: Color = Color.red
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            ContentLayer
        }
    }
    
    // Content
    var ContentLayer: some View {
        VStack(spacing: 20) {
            Text("Extract View 연습")
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Button {
                buttonTapped()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
            }
        }
    }
    
    // Function
    func buttonTapped() {
        backgroundColor = (backgroundColor == .red) ? .yellow : .red
    }
}


#Preview {
    ExtractViewBasic()
}
