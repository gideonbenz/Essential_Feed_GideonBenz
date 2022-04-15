//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 11/02/22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping ((LoadFeedResult) -> Void))
}
