//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 11/02/22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
