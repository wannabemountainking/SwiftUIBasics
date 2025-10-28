//
//  ButtonBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/28/25.
//

import SwiftUI

struct ButtonBasic: View {
    
    @State var mainTitle: String = "아직 버튼 안눌림"
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            
            Button {
                self.mainTitle = "리셋"
            } label: {
                Text("리셋버튼")
            }
            .tint(Color.blue)

            
            Text(mainTitle)
                .font(.largeTitle)
            
            // TODO: 1번 버튼 1. action은 버튼을 눌렀을 때 실행할 event 넣기, 2. label은 버튼 모양을 디자인하기
            Button {
                self.mainTitle = "기본 버튼 눌림"
            } label: {
                Text("기본 버튼")
            }
            .tint(Color.red)

            // 2번 버튼
            Divider()
            Button {
                self.mainTitle = "저장 버튼 놀림"
            } label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(
                                RoundedRectangle(cornerRadius: 15)
                            )
                            .shadow(radius: 15)
                    )
            }

            // 3번버튼: 아이콘 넣기
            Divider()
            Button {
                self.mainTitle = "❤️ (좋아요)를 눌렀습니다."
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75, alignment: .center)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.pink)
                            .frame(width: 40, height: 40, alignment: .center)
                    )
            }
            
            // 4번버튼: 캡슐만들기
            Divider()
            Button {
                self.mainTitle = "완료 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background {
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.5)
                    }
            }

        }
    }
}

#Preview {
    ButtonBasic()
}
