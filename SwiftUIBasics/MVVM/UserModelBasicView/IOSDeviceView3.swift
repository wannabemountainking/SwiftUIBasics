//
//  IOSDeviceView3.swift
//  SwiftUIBasics
//
//  Created by yoonie on 11/29/25.
//

import SwiftUI

struct IOSDeviceView3: View {
    // @StateObject 에서 선언한 ViewModel을 @EnvironmentObject 를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.iOSDeviceArr) { item in
                        Text(item.name)
                            
                    }//: LOOP
                    Button {
                        //action
                        dismiss()
                    } label: {
                        Text("뒤로 가기")
                            .fontWeight(.bold)
                    }

                }//: VStack
                .font(.title)
                .fontWeight(.ultraLight)
                .foregroundStyle(.white)
            }//: ScrollView
        }//: ZStack
    }//:body
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel())
}
