//
//  ListBasic.swift
//  SwiftUIBasics
//
//  Created by yoonie on 11/5/25.
//

import SwiftUI

struct ListBasic: View {
    @State private var fruits: [String] = ["banana", "apple", "pineapple", "mango", "cocoa"]
    @State private var meats: [String] = ["beef", "pork", "chicken", "lamb"]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    //content
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundStyle(.white)
                            .padding(.vertical, 10)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.purple.opacity(0.7))
                } header: {
                    Text("과일 종류")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.brown)
                }
            } // : list
            .navigationTitle("우리 동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
        } //: NavigationStack
    }// : body
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
//    func move(indices: IndexSet, newOffset: Int) {
//        fruits.move(fromOffsets: indices, toOffset: newOffset)
//    }
  
    func move(indices: IndexSet, newOffset: Int) {
        print("move:", indices, "->", newOffset)
        fruits.move(fromOffsets: indices, toOffset: newOffset)
        print("after:", fruits)
    }
    
    var addButton: some View {
        Button {
            //action
            fruits.append("strawberry")
        } label: {
            Text("Add")
        }

    }
}

#Preview {
    ListBasic()
}
