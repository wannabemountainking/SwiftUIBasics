//
//  ZStack.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct ZStackBasic: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.pink)
                .frame(width: 300, height: 300)
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ZStackBasic()
}
