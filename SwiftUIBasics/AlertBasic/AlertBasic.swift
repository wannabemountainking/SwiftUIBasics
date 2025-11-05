//
//  AlertBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/5/25.
//

import SwiftUI

struct AlertBasic: View {
    @State private var showLogoutAlert: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Button {
                    //action
                    showLogoutAlert = true
                } label: {
                    Text("로그아웃")
                }
                .alert("logout", isPresented: $showLogoutAlert) {
                    Button("취소", role: .cancel) {
                        print("logout 취소")
                    }
                    Button("로그아웃", role: .destructive) {
                        print("logout 완료")
                    }
                }
            }
        }
    }
}

#Preview {
    AlertBasic()
}
