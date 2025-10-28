//
//  StateBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/28/25.
//

import SwiftUI

struct StateBasic: View {
    
    @State var mainTitle: String = "아직 버튼 안눌림"
    @State var countClicked: Int = 0
    @State var backgroundColor: Color = Color.mint
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text(mainTitle)
                    .font(.title)
                    .fontWeight(.ultraLight)
                Text("카운트: \(countClicked)번")
                    .font(.headline)
                    .fontWeight(.light)
                    .underline()
                
                HStack(spacing: 30) {
                    Button {
                        self.countClicked += 1
                        self.mainTitle = "1번 버튼 눌림"
                        backgroundColor = Color.green
                    } label: {
                        Text("1번 버튼")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                    
                    Button {
                        self.countClicked -= 1
                        self.mainTitle = "2번 버튼 눌림"
                        backgroundColor = Color.pink
                    } label: {
                        Text("1번 버튼")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                    
                }
            }
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    StateBasic()
}
