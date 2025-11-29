//
//  IOSDeviceView1.swift
//  SwiftUIBasics
//
//  Created by yoonie on 11/29/25.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    // 처음 ViewModel을 초기화 할 때는 @StateObject로 불러오기!
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.iOSDeviceArr) { item in
                    NavigationLink {
                        //destination
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    }//: NavigationLink
                }//: Loop
            }//: list
        }//: NavigationStack
        //Navigation 하위 뷰에 ViewModel을 environmentObject로 넘겨줌
        .environmentObject(viewModel)
    }
}

#Preview {
    IOSDeviceView1(viewModel: IOSDeviceViewModel())
}
