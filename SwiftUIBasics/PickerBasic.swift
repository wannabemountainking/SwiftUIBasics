//
//  PickerBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/15/25.
//

import SwiftUI

struct PickerBasic: View {
    private let brandOfSmartPhone: [String] = [
        "TSMC", "SAMSUNG", "ChangShin", "Intel", "Micron", "SCIS"
    ]
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker(selection: $selectedIndex) {
                        //content
                        ForEach(0..<brandOfSmartPhone.count, id: \.self) { index in
                            Text(brandOfSmartPhone[index])
                        }
                    } label: {
                        Text("스마트폰 기종 선택")
                    }//: Picker

                    
                    Text("스마트폰 제조사는 \(brandOfSmartPhone[selectedIndex]) 입니다")
                        .padding()
                        .foregroundStyle(.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                }//: Section
                .pickerStyle(.wheel)
            }//: Form
            .navigationTitle("현재 사용 중인 스마트폰 기종은?")
            .navigationBarTitleDisplayMode(.inline)
        }//: NavigationStack
    }//: body
    
}

#Preview {
    PickerBasic()
}
