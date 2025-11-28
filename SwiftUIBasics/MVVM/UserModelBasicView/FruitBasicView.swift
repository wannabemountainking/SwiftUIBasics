//
//  FruitBasicView.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/28/25.
//

import SwiftUI

struct FruitBasicView: View {
    // @observedObject 사용하여 ViewModel 객체화하기 -> SubView에서 사용 (부모 View 값을 넘겨 받았을 경우 사용, 시작에는 @StateObject
//    @ObservedObject var fruitVM = FruitViewModel()
    
    // @StateObject 사용하여 ViewModel 객체화하기 -> View가 처음 생성 시, 초기화 할 때, 부모 View에서 주로 사용
    @StateObject var fruitVM = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                if fruitVM.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitVM.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .fontWeight(.bold)
                        }//: HStack
                    }//: Loop
                }//: Conditional
            }//: List
//            .onAppear {
//                fruitVM.getFruit()
//            }
            .navigationTitle("과일 리스트")
            .navigationBarTitleDisplayMode(.inline)
//            MARK: onAppear를 사용하면 계속 getFruit를 불러와서 쌓이게 됨. 따라서 onAppear를 쓰지 말고 ViewModel이 생성될 때 한 번 getFruit()를 호출하면 1번만 받아옴으로써 문제가 없게 된다
//            .onAppear(perform: {
//                Task {
//                    await fruitVM.getFruit()
//                }
//            })
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        //destination
                        FruitScreen(fruitVM: fruitVM)
                    } label: {
                        Image(systemName: "arrow.forward")
                            .font(.title)
                    }//: navigationLink

                }//: toobarItem
            }//: toolbar
        }// : Navigation
    }
}

#Preview {
    FruitBasicView()
}
