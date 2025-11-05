//
//  NavigationBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/2/25.
//

import SwiftUI

struct NavigationBasic: View {
    // property
    @State private var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    // destination: 목적지 -> 어디로 페이지 이동할 지
                    SecondNavigationView()
                } label: {
                    Text("Second Navigation View")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.blue)
                        )
                } // : NavigationLink
            } // : VStack
            // navigationTitle: 상단에 페이지 제목
            .navigationTitle("페이지 제목")
            // navigationBarTitleDisplayMode: 상단 페이지 제목 스타일
            // .automatic : 자동, .inline : 상단 중앙에 작게, large: leading 쪽에 크게
            .navigationBarTitleDisplayMode(.automatic)
            // navigationBarHidden : 네비게이션 타이틀, 바 감추기 -> .toolbar(.hidden)으로 변경
//            .toolbar(.hidden)
            // navigationBarItems: 상단 좌우에 icon, text, button을 사용해서 나타낼 수 있음
//            .navigationBarItems(
//                leading: Image(systemName: "line.3.horizontal").foregroundStyle(Color.green),
//                trailing: Button(action: {
//                    showSheet.toggle()
//                }, label: {
//                    Image(systemName: "gear")
//                        .foregroundStyle(Color.indigo)
//                })
//            ) // : NavigationView
            // 이제 toolbar(_:)에서 navigationBar.leading 등으로 사용
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "line.3.horizontal").foregroundStyle(.green)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showSheet.toggle()
                    } label: {
                        Image(systemName: "gear")
                            .foregroundStyle(.indigo)
                    }

                }
            })
            .sheet(isPresented: $showSheet) {
                ZStack {
                    // background
                    Color.green.ignoresSafeArea()
                    
                    // content
                    Text("설정 페이지 입니다")
                        .font(.largeTitle)
                }
            }
        }
    }
}

#Preview {
    NavigationBasic()
}
