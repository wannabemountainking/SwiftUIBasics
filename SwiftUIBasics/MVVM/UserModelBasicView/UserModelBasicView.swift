//
//  UserModelBasicView.swift
//  SwiftUIExercise
//
//  Created by YoonieMac on 11/28/25.
//

import SwiftUI


struct UserModelBasicView: View {
    @State private var users: [UserModel] = [
        UserModel(displayName: "철수", username: "철수123", followerCount: 100, isChecked: true),
        UserModel(displayName: "영희", username: "영희사랑", followerCount: 55, isChecked: false),
        UserModel(displayName: "길동", username: "홍길동", followerCount: 300, isChecked: false),
        UserModel(displayName: "한나", username: "황한나", followerCount: 86, isChecked: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(user.displayName)
                                .font(.headline)
                            Text(user.username)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("followers")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                    }//: HSTACK
                    .padding(.vertical, 7)
                }//: LOOP
            }//:LIST
            .navigationTitle("회원 리스트")
            .navigationBarTitleDisplayMode(.inline)
        }//:NAVIGATIONSTACK
    }//:BODY
}

#Preview {
    UserModelBasicView()
}
