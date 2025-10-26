//
//  VStackBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct VStackBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Rectangle()
                .fill(Color.pink)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    VStackBasic()
}
