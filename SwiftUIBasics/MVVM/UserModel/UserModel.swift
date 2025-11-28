//
//  UserModel.swift
//  SwiftUIExercise
//
//  Created by YoonieMac on 11/28/25.
//

import Foundation

struct UserModel: Identifiable {
    let id = UUID().uuidString
    let displayName: String
    let username: String
    let followerCount: Int
    let isChecked: Bool
}
