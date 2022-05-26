//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 26/05/22.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
