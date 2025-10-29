//
//  ConditionalBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/29/25.
//

import SwiftUI

struct ConditionalBasic: View {
    
    //property
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        
        Button {
            isLoading.toggle()
        } label: {
            Text("로드 중...: \(isLoading.description)")
        }
        
        if isLoading {
            ProgressView()
        }
        
        Button {
            showCircle.toggle()
        } label: {
            Text("원형 버튼: \(showCircle.description)")
        }
        
        Button {
            showRectangle.toggle()
        } label: {
            Text("사각형 버튼: \(showRectangle.description)")
        }
        
        if showCircle {
            Circle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
        }
        
        if showRectangle {
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
        }
        
        if showCircle && showRectangle {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.orange)
                .frame(width: 300, height: 100)
        }
        
        if !showCircle || !showRectangle {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.pink)
                .frame(width: 350, height: 70)
        }


        
        Spacer()
    }
}

#Preview {
    ConditionalBasic()
}
