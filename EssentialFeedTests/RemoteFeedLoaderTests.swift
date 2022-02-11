//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Gideon Benz on 11/02/22.
//

import XCTest

final class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
    }
}

final class HTTPClient {
    static let shared = HTTPClient()
    
    var requestedURL: URL?
    
    private init() {}
}

final class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        let _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
}
