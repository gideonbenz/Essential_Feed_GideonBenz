//
//  RemoteFeedImageDataLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Gideon Benz on 07/05/22.
//

import XCTest

private final class RemoteFeedImageDataLoader {
    init(client: Any) {
        
    }
}

class RemoteFeedImageDataLoaderTests: XCTestCase {

    func test_init_doesNotPerformAnyRequest() {
        let client = HTTPClientSpy()
        let _ = RemoteFeedImageDataLoader(client: client)
        
        XCTAssertTrue(client.requestedURLS.isEmpty)
    }
    
    private final class HTTPClientSpy {
        let requestedURLS = [Any]()
    }
}
