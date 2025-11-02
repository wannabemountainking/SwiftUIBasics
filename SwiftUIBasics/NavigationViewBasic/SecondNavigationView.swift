//
//  NaviBasic2.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/2/25.
//

import SwiftUI

struct SecondNavigationView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // background
            Color.green.ignoresSafeArea()
            
            VStack {
                Button {
                    dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                }
                .padding(.horizontal, 10)
                
                NavigationLink {
                    // destination
                    ZStack {
                        Color.red.ignoresSafeArea()
                        Text("3번째 페이지 입니다")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("Move to Third Page")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                }


            }
            
            // content
            
        }
    }
}

#Preview {
    NavigationView {
        SecondNavigationView()
    }
}
