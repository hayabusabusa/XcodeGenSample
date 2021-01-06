//
//  APIClient.swift
//  Core
//
//  Created by Shunya Yamada on 2021/01/06.
//

import Combine
import Alamofire

public final class APIClient {
    
    static public let shared: APIClient = .init()
    
    private init () {}
    
    public func call<T: APIRequest>(with request: T) -> Future<T.Response, AFError> {
        return Future { promise in
            let url = request.baseURL + request.path
            AF.request(url,
                       method: request.method,
                       parameters: request.parameters,
                       encoding: request.encoding,
                       headers: request.headers)
                .responseJSON { response in
                    switch response.result {
                    case .success:
                        do {
                            guard let data = response.data else {
                                return
                            }
                            
                            let entity = try JSONDecoder().decode(T.Response.self, from: data)
                            promise(.success(entity))
                        } catch {
                            promise(.failure(AFError.responseSerializationFailed(reason: .jsonSerializationFailed(error: error))))
                        }
                    case .failure(let error):
                        promise(.failure(error))
                    }
                }
        }
    }
}
