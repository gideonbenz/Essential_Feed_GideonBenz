//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 14/02/22.
//

public enum HTTPCLientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPCLientResult) -> Void)
}
