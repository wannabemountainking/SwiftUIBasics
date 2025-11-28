//
//  FruitScreen.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/28/25.
//

import SwiftUI

struct FruitScreen: View {
    @ObservedObject var fruitVM = FruitViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ForEach(fruitVM.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundStyle(.white)
                }// LOOP
                
                Button {
                    //action
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("뒤로가기")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                }
            }//:VStack
        }//:ZStack
    }//: body
}

#Preview {
    FruitScreen()
}
