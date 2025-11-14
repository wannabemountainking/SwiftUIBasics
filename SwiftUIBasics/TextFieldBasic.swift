//
//  TextFieldBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/14/25.
//

import SwiftUI

struct TextFieldBasic: View {
    @State private var inputText: String = ""
    @State private var userNameData: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                // TextField는 한줄 입력 - 적은 양의 text 입력시 사용
//                TextField("최소 2글자 이상 입력", text: $inputText)
//                    .font(.title3)
//                    .padding()
//                    .background(Color.gray.opacity(0.3))
//                    .clipShape(
//                        RoundedRectangle(cornerRadius: 10)
//                    )
                
                // TextEditor는 여러줄 입력 - 긴 줄의 text를 입력할 때 사용
                TextEditor(text: $inputText)
                    .frame(height: 200)
                    .colorMultiply(Color.gray.opacity(0.3))
                
                Button {
                    //action
                    if isTextEnough() {
                        saveText()
                        print(userNameData)
                    }
                } label: {
                    Text("save".uppercased())
                        .font(.title3)
                        .foregroundStyle(.white)
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? Color.blue : Color.gray)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                }
                .disabled(!isTextEnough())
                
                ForEach(userNameData, id: \.self) { userName in
                    Text(userName)
                }
                
                Spacer()
            }//: VStack
            .padding(10)
            .padding(.horizontal, 10)
            .navigationTitle("당신의 이름은?")
            
        }//:  NavigationStack
    }//: body
    
    private func isTextEnough() -> Bool {
        return inputText.count >= 2
    }
    
    private func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
}

#Preview {
    TextFieldBasic()
}
