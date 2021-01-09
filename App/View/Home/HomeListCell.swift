//
//  HomeListCell.swift
//  XcodeGenSample
//
//  Created by Shunya Yamada on 2021/01/03.
//

import SwiftUI
import Kingfisher

struct HomeListCell: View {
    let title: String
    let content: String
    let imageURL: String?
    
    var body: some View {
        VStack(spacing: 4) {
            HStack(spacing: 8.0) {
                if let imageURL = URL(string: imageURL ?? "") {
                    KFImage(imageURL)
                        .placeholder {
                                Image(systemName: "icloud.fill")
                                    .font(.largeTitle)
                                    .opacity(0.3)
                        }
                        .resizable()
                        .scaledToFill()
                        .frame(width: 36, height: 36)
                        .clipShape(Circle())
                } else {
                    Image(systemName: "icloud.slash")
                        .frame(width: 36, height: 36)
                        .foregroundColor(Color.gray)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray.opacity(0.3), lineWidth: 1))
                }
                
                Text(title)
                    .bold()
                    .font(.system(size: 16))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            HStack(spacing: 8.0) {
                Spacer()
                    .frame(width: 40)
                
                Text(content)
                    .font(.system(size: 12))
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct HomeListCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeListCell(title: "プレビュー", content: "内容", imageURL: nil).previewLayout(.fixed(width: 320, height: 64))
    }
}
