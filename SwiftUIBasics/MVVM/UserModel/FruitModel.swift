//
//  FruitModel.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/28/25.
//

import Foundation

struct FruitModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    var count: Int
}
