//
//  ItemsRequest.swift
//  Core
//
//  Created by Shunya Yamada on 2021/01/06.
//

import Alamofire

struct ItemsRequest: APIRequest {
    typealias Response = [QiitaItem]
    
    let page: Int
    let perPage: Int = 20
    
    var path: String {
        return "/items"
    }
    
    var method: HTTPMethod {
        return HTTPMethod.get
    }
    
    var parameters: Parameters? {
        return [
            "page": page,
            "per_page": perPage
        ]
    }
    
    var encoding: ParameterEncoding {
        return URLEncoding.queryString
    }
    
    var headers: HTTPHeaders? {
        return HTTPHeaders([
            HTTPHeader(name: "Authorization", value: "Bearer " + qiitaAccessToken)
        ])
    }
}
