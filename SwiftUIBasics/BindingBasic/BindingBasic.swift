//
//  BindingBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/29/25.
//

import SwiftUI

struct BindingBasic: View {
    // property
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack(alignment: .center, spacing: 20) {
                Text(title)
                
                // button
                // parameter로 @State 값에 $를 붙인다(이렇게 하면 하위뷰의 해당 Binding 변수의 값을 가져오는 (연동하는) 것이 가능
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
