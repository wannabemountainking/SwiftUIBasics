//
//  IOSDeviceView2.swift
//  SwiftUIBasics
//
//  Created by yoonie on 11/29/25.
//

import SwiftUI

struct IOSDeviceView2: View {

    @State var selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("당신이 선택한 기기는?")
                    .font(.title)
                
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                NavigationLink {
                    //destination
                    IOSDeviceView3()
                } label: {
                    Text("다음 페이지로 이동 ->")
                        .font(.headline)
                        .foregroundStyle(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }

            }
        }

    }
}

#Preview {
    IOSDeviceView2(selectedItem: "iPhone")
}
