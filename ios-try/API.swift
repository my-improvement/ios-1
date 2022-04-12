//
//  API.swift
//  ios-try
//
//  Created by Digital on 09/04/22.
//

import Alamofire

class API {
    private static let baseUrl = "https://dog.ceo/api"
    
    static func makeRequest(_ endpoint: String, onFinish: @escaping (_: Data?) -> Void) {
        Session.default.request(baseUrl + endpoint, method: .get).response { response in
            onFinish(response.data)
        }
    }
    
    static func loadSingleDog(onFinish: @escaping (_: Data?) -> Void) {
        makeRequest("/breeds/image/random", onFinish: onFinish)
    }
}
