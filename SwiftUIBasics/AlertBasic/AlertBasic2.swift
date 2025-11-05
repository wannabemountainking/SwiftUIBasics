//
//  AlertBasic2.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/5/25.
//

import SwiftUI


// network 에러 처리
struct AlertBasic2: View {
    @State private var errorMessage: String?
    
    var body: some View {
        ZStack {
            Color.orange.opacity(0.5)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    //action
                    loadData()
                } label: {
                    Text("데이터 로드")
                } //: button
                .alert("에러 발생", isPresented: .constant(errorMessage != nil)) {
                    Button("확인") {
                        errorMessage = nil
                    }
                    Button("재시도") {
                        loadData()
                    }
                } message: {
                    Text(errorMessage ?? "에러 메시지 없음")
                }

            } //: VStack
        } //: ZStack
    }
    
    func loadData() {
        errorMessage = "서버 연결에 실패했습니다. 인터넷 연결을 확인해주세요."
    }
}

#Preview {
    AlertBasic2()
}
