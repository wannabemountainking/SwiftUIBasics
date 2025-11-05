//
//  AlertBasic3Permission.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/5/25.
//

import SwiftUI
import Photos

struct AlertBasic3Permission: View {
    
    @State private var showPermissionAlert: Bool = false
    
    var body: some View {
        Button("사진 업로드") {
            checkPhotoPermission()
        }
        .alert("사진 접근 권한 필요", isPresented: $showPermissionAlert) {
            Button("취소", role: .cancel) {
                print("권한 요청 취소")
            }
            Button("설정으로 이동", role: .confirm) {
                openSettings()
            }
            
        } message: {
            Text("사진을 업로드하려면 사진 라이브러리 접근 권한이 필요합니다.\n설정에서 권한을 허용해주세요.")
        }

    }
    
    func checkPhotoPermission() {
        let status = PHPhotoLibrary.authorizationStatus(for: PHAccessLevel.readWrite)
        
        switch status {
        case .denied, .restricted:
            showPermissionAlert = true
        case .authorized:
            print("사진 선택 가능")
        default:
            print("예외사항")
        }
    }
    
    func openSettings() {
        if let url = URL(string: UIApplication.openSettingsURLString) {
            UIApplication.shared.open(url)
        }
    }
}

#Preview {
    AlertBasic3Permission()
}
