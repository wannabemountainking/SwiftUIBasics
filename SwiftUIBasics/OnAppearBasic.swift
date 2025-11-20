//
//  onAppearBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/24/25.
//

import SwiftUI

struct OnAppearBasic: View {
    @State private var noticeText: String = "onAppear 시작 전"
    @State private var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(noticeText)
                // 화면이 보이고 나서 load가 되게 끔 하는 LazyVStack
                LazyVStack(spacing: 10) {
                    ForEach(0 ..< 50) { _ in
                        
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                        // onAppear: 사각형이 새로 생길 때 마다 copunt 1씩 증가시키기
                            .onAppear {
                                count += 1
                            }
                    }//: Loop
                }//: LazyVStack
            }//: ScrollView
            // .onAppear: 여기서는 ScrollView가 만들어질 때(완전 초기, OnAppearBasic View가 화면에 나타날 때) 시작되는 로직
            .onAppear(perform: {
                // dispatchQueue를 사용해서 main thread에 2초 딜레이 후 이벤트 실행
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noticeText = "onAppear 시작 완료했습니다"
                }
            })
            .navigationTitle("생성된 박스 : \(count)")
        }//: NavigationStack
    }//: body
}

#Preview {
    OnAppearBasic()
}
