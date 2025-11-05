//
//  DeleteConfirm.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/5/25.
//

import SwiftUI

struct DeleteConfirm: View {
    @State private var items: [String] = ["항목 1", "항목 2", "항목 3"]
    @State private var itemSoonToDelete: String?
    
    var body: some View {
        ZStack {
            VStack {
                List {
                    ForEach(items, id: \.self) { item in
                        HStack {
                            Text(item)
                            Spacer()
                            Button("삭제") {
                                itemSoonToDelete = item
                            }
                            .foregroundStyle(.red)
                        } //: HStack
                    } //: ForEach
                } // : list
                .alert("삭제 확인", isPresented: .constant(itemSoonToDelete != nil)) {
                    Button("취소", role: .cancel) {
                        itemSoonToDelete = nil
                    }
                    Button("삭제 실행", role: .destructive) {
                        if let item = itemSoonToDelete {
                            items.removeAll { $0 == item }
                            itemSoonToDelete = nil
                        }
                    }
                } message: {
                    Text("\(itemSoonToDelete ?? "")'을(를) 삭제하시겠습니까?")
                }

            } //: VStack
        }//: ZStack
    } //: body
}

#Preview {
    DeleteConfirm()
}
