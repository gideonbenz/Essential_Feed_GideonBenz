//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Gideon Benz on 11/02/22.
//

import XCTest

final class RemoteFeedLoader {}

final class HTTPClient {
    var requestedURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        let _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
}
