//
//  APIRequest.swift
//  Core
//
//  Created by Shunya Yamada on 2021/01/06.
//

import Foundation
import Alamofire

public protocol APIRequest {
    associatedtype Response: Decodable
    
    var baseURL: String { get }
    var path: String { get }
    var method: Alamofire.HTTPMethod { get }
    var encoding: Alamofire.ParameterEncoding { get }
    var parameters: Alamofire.Parameters? { get }
    var headers: Alamofire.HTTPHeaders? { get }
}

extension APIRequest {
    var baseURL: String {
        return "https://qiita.com/api/v2"
    }
    
    var encoding: Alamofire.ParameterEncoding {
        return JSONEncoding.default
    }
    
    var parameters: Alamofire.Parameters? {
        return nil
    }
    
    var headers: Alamofire.HTTPHeaders? {
        return nil
    }
}
