//
//  ItemsRequest.swift
//  Core
//
//  Created by Shunya Yamada on 2021/01/06.
//

import Alamofire

public struct ItemsRequest: APIRequest {
    public typealias Response = [QiitaItem]
    
    let page: Int
    let perPage: Int
    
    public init(page: Int, perPage: Int = 20) {
        self.page = page
        self.perPage = perPage
    }
    
    public var path: String {
        return "/items"
    }
    
    public var method: HTTPMethod {
        return HTTPMethod.get
    }
    
    public var parameters: Parameters? {
        return [
            "page": page,
            "per_page": perPage
        ]
    }
    
    public var encoding: ParameterEncoding {
        return URLEncoding.queryString
    }
    
    public var headers: HTTPHeaders? {
        return HTTPHeaders([
            HTTPHeader(name: "Authorization", value: "Bearer " + qiitaAccessToken)
        ])
    }
}
