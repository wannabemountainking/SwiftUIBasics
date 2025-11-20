//
//  TabViewBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/20/25.
//

import SwiftUI

struct TabViewBasic: View {
    @State private var initPageNumber: Int = 0
    
    var body: some View {
        // section: TabView가 어디 페이지(화면)를 가리키는 지 설정하는 것
        TabView(selection: $initPageNumber) {
            Tab("Home", systemImage: "house.fill", value: initPageNumber) {
                HomeView(selectedTab: $initPageNumber)
            }
            Tab("Browse", systemImage: "globe", value: initPageNumber) {
                Text("둘러보기 화면")
            }
            Tab("Profile", systemImage: "person.fill", value: initPageNumber) {
                Text("프로필 화면")
                Image(systemName: "photo")
            }
        }
        .tint(.red)
    }
}

#Preview {
    TabViewBasic()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack(spacing: 20) {
                Text("홈뷰")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                Button {
                    //action
                    selectedTab = 2
                } label: {
                    Text("프로필 화면 이동")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }

            }
        }
    }
}
