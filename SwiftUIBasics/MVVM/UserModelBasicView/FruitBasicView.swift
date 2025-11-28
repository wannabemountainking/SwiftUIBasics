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
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        //destination
                        FruitScreen()
                    } label: {
                        Image(systemName: "arrow.forward")
                            .font(.title)
                    }

                }
            }
        }// : Navigation
    }
}

#Preview {
    FruitBasicView()
}
