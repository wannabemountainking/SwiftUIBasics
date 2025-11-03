//
//  SheetBasic2.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/1/25.
//

import SwiftUI

struct SheetBasic2: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.orange.opacity(0.5)
                .ignoresSafeArea()
            Button {
                dismiss()
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .foregroundStyle(Color.red)
                    .frame(width: 30, height: 30)
                    .padding()
                    .padding(.horizontal, 10)
            }
        }
        
    }
}

#Preview {
    SheetBasic2()
}
