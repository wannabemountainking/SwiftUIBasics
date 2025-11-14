//
//  ActionSheet.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/13/25.
//

import SwiftUI

struct ActionSheetPractice: View {
    @State private var showActionSheet: Bool = false
    @State private var resultActionSheet: String = ""
    
    var body: some View {
        VStack {
            // show result
            Text(resultActionSheet)
                .font(.largeTitle)
            Spacer()
            //content
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("Yoonie")
                Spacer()
                Button {
                    //action
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            }//: HStack
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
            Spacer()
        }//:VStack
        .actionSheet(isPresented: $showActionSheet) {
            // actionSheet 담기는 내용 ActionSheet type
            getMyActionSheet()
        }
    }//: body
    
    private func getMyActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("공유하기")) {
            //action
            resultActionSheet = "공유되었습니다"
        }
        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
            //action
            resultActionSheet = "신고되었습니다"
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제하기")) {
            resultActionSheet = "삭제되었습니다"
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("ActionSheet 제목"),
            message: Text("ActionSheet 내용"),
            buttons: [shareButton, reportButton, deleteButton, cancelButton]
        )
    }
}

#Preview {
    ActionSheetPractice()
}
