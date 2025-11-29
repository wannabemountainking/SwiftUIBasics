//
//  ApppStorageBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/30/25.
//

import SwiftUI

struct ApppStorageBasic: View {
    //  일반적인 데이터
    @State var generalName: String?
    
    //App Storage를 사용하면 앱을 다시 열 때 자동으로 키에서 값을 가져온다
    @AppStorage("name") var appStrageName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            //일반적은 State
            VStack(spacing: 10) {
                Text("@State 로 저장")
                    .font(.headline)
                Text(generalName ?? "당신의 이름은 무엇인가요?")
                
                Button {
                    //action
                    generalName = "Jacob"
                } label: {
                    Text("이름 불러오기")
                }
            }// : VStack
            .padding()
            .border(.green)
            
            // @AppStrage 사용
            VStack(spacing: 10) {
                Text("@AppStorage로 저장")
                    .font(.headline)
                
                Text(appStrageName ?? "당신의 이름은 무엇인가요?")
                
                Button {
                    //action
                    appStrageName = "Jacob"
                } label: {
                    Text("이름 불러오기")
                }

            }//: VSTack
            .padding()
            .border(.red)
        }//: VStack
    }//: body
}

#Preview {
    ApppStorageBasic()
}
