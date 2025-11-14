//
//  ConfirmationDialog.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/13/25.
//

import SwiftUI
import UniformTypeIdentifiers


struct FileDetails: Identifiable {
    var id: String {name}
    let name: String
    let fileType: UTType
}

struct ConfirmationDialog: View {
    @State private var isConfirming = false
    @State private var dialogDetail: FileDetails?
    
    var body: some View {
        Button("Import File") {
            dialogDetail = FileDetails(
                name: "MyImageFile.png",
                fileType: .png
            )
        }
        .confirmationDialog(
            "Are you sure you want to import this file?",
            isPresented: $isConfirming,
            presenting: dialogDetail) { detail in
                Button {
                    //action
                    print("import action")
                } label: {
                    Text("Import \(detail.name)")
                }
                
                Button("Cancel", role: .cancel) {
                    dialogDetail = nil
                }

            } message: { detail in
                Text(
                    """
                    This will add \(detail.name).\(detail.fileType) \
                    to your library.
                    """
                )
            }


    }
}

#Preview {
    ConfirmationDialog()
}
