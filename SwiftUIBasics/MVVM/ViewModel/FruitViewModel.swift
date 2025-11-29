//
//  FruitViewModel.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/28/25.
//

import Foundation
import Combine
import SwiftUI

class FruitViewModel: ObservableObject {
    
    //published wrapper(@Published)는 @State와 비슷하게 상태값을 선언하는데, class 안에서는 @Published 를 사용한다는 점이 다름
    // @Published 는 Fruit 배열의 값이 View에서 변경되면 FruitViewModel에서 새로운 변경사항을 알아치려서 알아서 변경한다는 점임
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    //init
    init()  {
        Task {
            await getFruit()
        }
    }
    
    //function
    // getFruit() : fruitArray를 생성함
    func getFruit() async {
        // fruit 의 각각의 값 선언
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 3)
        let fruit3 = FruitModel(name: "바나나", count: 80)
        
        // 3초 딜레이 후, fruitArray에 선언된 값을 집어넣게
        isLoading = true
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            for fruit in [fruit1, fruit2, fruit3] {
//                self.fruitArray.append(fruit)
//            }
//            self.isLoading = false
//        }
        try? await Task.sleep(for: .seconds(3))
        
        await MainActor.run {
            for fruit in [fruit1, fruit2, fruit3] {
                self.fruitArray.append(fruit)
            }
            self.isLoading = false
        }
    }
    
    // fruitArray에서 값을 삭제하는 로직
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}
