//
//  ForEachBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct ForEachBasic: View {
    
    // 변수 생성
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            ForEach(0 ..< 10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    Text("인덱스 번호 : \(index)번")
                        .font(.title2)
                }
            }
            
            Divider()
            VStack(spacing: 0) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }
            .font(.title2)
            .fontWeight(.semibold)
        }
    }
}

#Preview {
    ForEachBasic()
}
