//
//  FeedImagePresenterTests.swift
//  EssentialFeedTests
//
//  Created by Gideon Benz on 06/05/22.
//

import XCTest

final class FeedImagePresenter {
    init(view: Any) {
        
    }
}

class FeedImagePresenterTests: XCTestCase {

    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()
        
        let _ = FeedImagePresenter(view: view)
        
        XCTAssertTrue(view.messages.isEmpty)
    }
    
    // MARK: - Helpers
    
    private final class ViewSpy {
        let messages = [Any]()
    }
}
