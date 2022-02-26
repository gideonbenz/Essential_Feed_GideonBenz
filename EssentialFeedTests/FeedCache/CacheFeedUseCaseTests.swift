//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Gideon Benz on 26/02/22.
//

import XCTest

final class LocalFeedLoader {
    init(store: FeedStore) {}
}

final class FeedStore {
    var deleteCachedFeedCallCount: Int = 0
}

final class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        let _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
}
