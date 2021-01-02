//
//  HomeListCell.swift
//  XcodeGenSample
//
//  Created by Shunya Yamada on 2021/01/03.
//

import SwiftUI

struct HomeListCell: View {
    let title: String
    
    var body: some View {
        HStack(spacing: 8.0) {
            Image(systemName: "square.grid.3x2.fill")
                .foregroundColor(.blue)
            
            Text(title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .opacity(0.4)
        }
    }
}

struct HomeListCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeListCell(title: "プレビュー").previewLayout(.fixed(width: 320, height: 44))
    }
}
