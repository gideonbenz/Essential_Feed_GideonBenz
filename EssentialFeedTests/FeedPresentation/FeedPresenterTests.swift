//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by Gideon Benz on 06/05/22.
//

import XCTest
@testable import EssentialFeediOS

final class FeedPresenter {
    init(view: Any) {
        
    }
}

class FeedPresenterTests: XCTestCase {

    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()
        
        _ = FeedPresenter(view: view)
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    // MARK: - Helpers
    
    private final class ViewSpy {
        let messages = [Any]()
    }
}
