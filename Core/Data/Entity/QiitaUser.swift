//
//  QiitaUser.swift
//  Core
//
//  Created by Shunya Yamada on 2021/01/06.
//

import Foundation

public struct QiitaUser: Decodable {
    public let profileImageURL: String?
    
    private enum CodingKeys: String, CodingKey {
        case profileImageURL = "profile_image_url"
    }
}
