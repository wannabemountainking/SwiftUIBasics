//
//  UpdateAlarm.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/5/25.
//

import SwiftUI

struct UpdateAlarm: View {
    @State private var showUpdateAlert = false
    @State private var isUpdateRequired = false
    
    var body: some View {
        Text("앱 버전: 1.0.0")
            .onAppear {
                checkAppVersion()
            }
            .alert("업데이트 필요", isPresented: $showUpdateAlert) {
                if !isUpdateRequired {
                    Button("나중에") {}
                }
                Button(isUpdateRequired ? "업데이트" : "지금 업데이트") {
                    openAppStore()
                }
            } message: {
                Text(isUpdateRequired ? "필수 업데이트가 있습니다. 앱을 사용하려면 업데이트해주세요."  // 강제
                     : "새로운 버전이 출시되었습니다. 업데이트하시겠습니까?")
            }

    }
    
    func checkAppVersion() {
        let currentVersion = "1.0.0"
        let serverMinVersion = "1.0.5"
        let serverLatestVersion = "1.2.0"
        
        if currentVersion < serverMinVersion {
            isUpdateRequired = true
            showUpdateAlert = true
        } else if currentVersion < serverLatestVersion {
            isUpdateRequired = false
            showUpdateAlert = true
        }
    }
    
    func openAppStore() {
        print("앱스토어로 이동")
    }
}

#Preview {
    UpdateAlarm()
}
