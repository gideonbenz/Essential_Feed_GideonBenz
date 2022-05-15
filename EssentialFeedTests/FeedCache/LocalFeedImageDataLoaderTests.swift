//
//  LocalFeedImageDataLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Gideon Benz on 15/05/22.
//

import XCTest
import EssentialFeed

protocol FeedImageDataStore {
    func retrieve(dataForURL url: URL)
}

final class LocalFeedImageDataLoader {
    private struct Task: FeedImageDataLoaderTask {
        func cancel() {}
    }
    
    private let store: FeedImageDataStore
    
    init(store: FeedImageDataStore) {
        self.store = store
    }
    
    func loadImageData(from url: URL, completion: @escaping ((FeedImageDataLoader.Result) -> Void)) -> FeedImageDataLoaderTask {
        store.retrieve(dataForURL: url)
        return Task()
    }
}

final class LocalFeedImageDataLoaderTests: XCTestCase {
    
    func test_init_doesNotMessageStoreUponCreation() {
        let (_, store) = makeSUT()
        
        XCTAssertTrue(store.receivedMessage.isEmpty)
    }
    
    func test_loadImageDataFromURL_requestsStoreDataForURL() {
        let (sut, store) = makeSUT()
        let url = anyURL()
        
        _ = sut.loadImageData(from: url) { _ in }
        
        XCTAssertEqual(store.receivedMessage, [.retrieve(dataFor: url)])
    }
    
    // MARK: - Helpers
    
    private func makeSUT(file: StaticString = #file, line: UInt = #line) -> (sut: LocalFeedImageDataLoader, store: StoreSpy) {
        let store = StoreSpy()
        let sut = LocalFeedImageDataLoader(store: store)
        trackForMemoryLeaks(store, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, store)
    }
    
    private final class StoreSpy: FeedImageDataStore {
        enum Message: Equatable {
            case retrieve(dataFor: URL)
        }
        
        private(set) var receivedMessage = [Message]()
        
        func retrieve(dataForURL url: URL) {
            receivedMessage.append(Message.retrieve(dataFor: url))
        }
    }
}
