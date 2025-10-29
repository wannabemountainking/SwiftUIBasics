//
//  BindingChild.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/29/25.
//

import SwiftUI

struct BindingChild: View {
    
    @State var buttonColor: Color = Color.blue
    @State var isActivated: Bool = false
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            // action
            isActivated.toggle()
            if isActivated {
                buttonColor = Color.pink
                backgroundColor = Color.orange
                title = "Binding Child View"
            } else {
                buttonColor = Color.blue
                backgroundColor = Color.green
                title = "Binding Basic View"
            }
        } label: {
            Text("\(title.components(separatedBy: " ")[1...2].joined(separator: " "))에서 이동")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal, 15)
                .background(buttonColor)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BindingChild(backgroundColor: .constant(Color.orange), title: .constant("Binding Child View"))
}
