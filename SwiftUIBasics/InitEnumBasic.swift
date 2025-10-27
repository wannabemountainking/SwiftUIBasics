//
//  InitEnumBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct InitEnumBasic: View {
    
    // 변수 선언
    let count: Int
    let backgroundColor: Color
    let title: String
    
    // enum 생성
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = Color.red
        } else {
            self.title = "오렌지"
            self.backgroundColor = Color.orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
    }
}

#Preview {
    HStack(alignment: .center, spacing: 20) {
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 100, fruit: .orange)
    }
    
}
