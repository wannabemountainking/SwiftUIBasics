//
//  IOSDeviceViewModel.swift
//  SwiftUIBasics
//
//  Created by yoonie on 11/29/25.
//

import Foundation
import Combine


class IOSDeviceViewModel: ObservableObject {
    
    @Published var iOSDeviceArr: [IOSDeviceModel] = []
    
    // init
    init() {
        getData()
    }
    
    func getData() {
        // 값 선언
        let iPhone = IOSDeviceModel(name: "iPhone")
        let iPad = IOSDeviceModel(name: "iPad")
        let iMac = IOSDeviceModel(name: "iMac")
        let appleWatch = IOSDeviceModel(name: "apple watch")
        // 값 넣기
        iOSDeviceArr.append(contentsOf: [iPhone, iPad, iMac, appleWatch])
    }
}
