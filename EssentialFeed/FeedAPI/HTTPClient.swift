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
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func get(from url: URL, completion: @escaping (HTTPCLientResult) -> Void)
}
