//
//  SheetBasic1.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 11/1/25.
//

import SwiftUI

struct SheetBasic1: View {
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3)
                .ignoresSafeArea()
            
            Button {
                //action
                withAnimation(.easeInOut) {
                    showSheet.toggle()
                }
            } label: {
                Text("modal button")
                    .font(.title2)
                    .foregroundStyle(Color.white)
                    .fontWeight(.light)
                    .frame(width: 140, height: 40, alignment: .center)
                    .padding(7)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.blue)
                    )
                    .opacity(showSheet ? 0 : 1)
            }
            .sheet(isPresented: $showSheet) {
                SheetBasic2()
            }

        }
        
    }
}

#Preview {
    SheetBasic1()
}
