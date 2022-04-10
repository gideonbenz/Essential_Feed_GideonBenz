//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 01/03/22.
//

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal  let description: String?
    internal let location: String?
    internal let image: URL
}
