//
//  OnTabGestureBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/24/25.
//

import SwiftUI

struct OnTabGestureBasic: View {
    @State private var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundStyle(isSelected ? .green : .red)
            
            // 1. 일반적인 button
            Button {
                //action
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            
            // 2. onTabGesture 사용
            Text("2. onTabGesture 사용")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTabGesture 2번 클릭
            Text("3. onTabGesture 두번 클릭")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
        }
        .padding(40)
            
    }
}

#Preview {
    OnTabGestureBasic()
}
