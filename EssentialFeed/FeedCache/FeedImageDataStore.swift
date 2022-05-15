//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 15/05/22.
//

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
