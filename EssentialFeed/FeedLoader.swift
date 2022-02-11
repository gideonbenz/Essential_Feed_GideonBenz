//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 11/02/22.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping ((LoadFeedResult) -> Void))
}
