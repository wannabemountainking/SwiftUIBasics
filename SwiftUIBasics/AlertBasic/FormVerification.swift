//
//  FormVerification.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/5/25.
//

import SwiftUI

struct FormVerification: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var alertType: FormAlertType?
    
    enum FormAlertType: Identifiable {
        case emptyEmail
        case invalidEmail
        case emptyPassword
        case weakPassword
        case success
        
        var id: Self { self }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("이메일", text: $email)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.none)
            SecureField("비밀번호", text: $password)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.none)
            
            Button("회원 가입") {
                validateForm()
            }
        }
        .padding()
        .alert("입력정보 확인", isPresented: alertType != nil) { type in
            switch type {
            case .emptyEmail:
                return Alert(
                    title: Text("이메일 입력 필요"),
                    message: Text("이메일을 입력해주세요"),
                    dismissButton: .default(Text("확인"))
                )
            case .invalidEmail:
                return Alert(
                    title: Text("이메일 형식 오류"),
                    message: Text("올바른 이메일 주소를 입력해주세요"),
                    dismissButton: .default(Text("확인"))
                )
            case .emptyPassword:
                return Alert(
                    title: Text("비밀번호 입력 필요"),
                    message: Text("비밀번호를 입력해주세요"),
                    dismissButton: .default(Text("확인"))
                )
            case .weakPassword:
                return Alert(
                    title: Text("비밀번호 강도 부족"),
                    message: Text("비밀번호는 8자 이상이어야 합니다"),
                    dismissButton: .default(Text("확인"))
                )
            case .success:
                return Alert(
                    title: Text("회원가입 성공!"),
                    message: Text("환영합니다!"),
                    dismissButton: .default(Text("확인")) {
                        // 메인 화면으로 이동
                        print("회원가입 완료!")
                    }
                )
            }
        }

    }
    
    func validateForm() {
        if email.isEmpty {
            alertType = .emptyEmail
        } else if isValidEmail(email) {
            alertType = .invalidEmail
        } else if password.isEmpty {
            alertType = .emptyPassword
        } else if isStrongPassword(password) {
            alertType = .weakPassword
        } else {
            alertType = .success
        }
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    func isStrongPassword(_ password: String) -> Bool {
        // 8자 이상, 대문자, 소문자, 숫자, 특수문자 포함
        let hasUppercase = password.range(of: "[A-Z]", options: .regularExpression) != nil
        let hasLowercase = password.range(of: "[a-z]", options: .regularExpression) != nil
        let hasNumber = password.range(of: "[0-9]", options: .regularExpression) != nil
        let hasSpecial = password.range(of: "[!@#$%^&*]", options: .regularExpression) != nil
        
        return password.count >= 8 && hasUppercase && hasNumber && hasLowercase && hasSpecial
    }
}

#Preview {
    FormVerification()
}
