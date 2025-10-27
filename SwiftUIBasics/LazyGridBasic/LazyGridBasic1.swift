//
//  LazyGridBasic1.swift
//  SwiftUIBasics
//
//  Created by YoonieMac on 10/27/25.
//

import SwiftUI

struct LazyGridBasic1: View {
    // LazyVGrid
    // Columns 의 갯수를 3개로 설정
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        // 1. LazyGrid
        ScrollView {
            // Hero 부분
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            // header를 포함한 LazyVGrid
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]
            ) {
                // Section1
                Section {
                    ForEach(0 ..< 20) { index in
                        Rectangle()
                            .fill(Color.gray)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index) 번")
                            )
                    }
                } header: {
                    Text("Section 1")
                        .foregroundStyle(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                } // Section 1
                
                // Section 2
                Section {
                    ForEach(0 ..< 20) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index) 번")
                            )
                    }
                } header: {
                    Text("Section 2")
                        .font(.title)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                } // Section 2
            }
        }
    } // :1번
}

#Preview {
    LazyGridBasic1()
}
