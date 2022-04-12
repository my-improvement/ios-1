//
//  SingleDog.swift
//  ios-try
//
//  Created by Digital on 09/04/22.
//

import SwiftyJSON

class SingleDog {
    var message: String
    var status: String
    
    init(data: Data) {
        let json = try? JSON(data: data)
        
        self.message = json!["message"].string!
        self.status = json!["status"].string!
    }
}
