//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 08/05/22.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { 200 }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
