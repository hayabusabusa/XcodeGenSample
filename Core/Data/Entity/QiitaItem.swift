//
//  QiitaItem.swift
//  Core
//
//  Created by Shunya Yamada on 2021/01/06.
//

import Foundation

public struct QiitaItem: Decodable {
    public let title: String?
    public let body: String?
    public let url: String?
    public let likesCount: Int
    public let commentsCount: Int
    public let user: QiitaUser
    
    private enum CodingKeys: String, CodingKey {
        case title
        case body
        case url
        case likesCount = "likes_count"
        case commentsCount = "comments_count"
        case user
    }
}
