//
//  HStackBasic.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/26/25.
//

import SwiftUI

struct HStackBasic: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 130, height: 130)
            Rectangle()
                .fill(Color.green)
                .frame(width: 90, height: 90)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    HStackBasic()
}
