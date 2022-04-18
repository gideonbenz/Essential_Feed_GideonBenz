//
//  FeedViewControllerTests.swift
//  EssentialFeediOSTests
//
//  Created by Gideon Benz on 18/04/22.
//

import XCTest

final class FeedViewController {
    init(loader: FeedViewControllerTests.LoaderSpy) {
        
    }
}

final class FeedViewControllerTests: XCTestCase {
    
    func test_init_doesNotLoadFeed() {
        let loader = LoaderSpy()
        let _ = FeedViewController(loader: loader)
        
        XCTAssertEqual(loader.loadCallCount, 0)
    }
    
    //MARK: - Helpers
    final class LoaderSpy {
        private(set) var loadCallCount: Int = 0
    }
}
