//
//  FeedImageDataStoreSpy.swift
//  EssentialFeedTests
//
//  Created by Gideon Benz on 15/05/22.
//

import EssentialFeed

final class FeedImageDataStoreSpy: FeedImageDataStore {
    enum Message: Equatable {
        case insert(data: Data, for: URL)
        case retrieve(dataFor: URL)
    }
    
    private(set) var receivedMessages = [Message]()
    private(set) var retrievalCompletions = [(FeedImageDataStore.RetrievalResult) -> Void]()
    private(set) var insertionCompletions = [(FeedImageDataStore.InsertionResult) -> Void]()
    
    func insert(_ data: Data, for url: URL, completion: @escaping (InsertionResult) -> Void) {
        receivedMessages.append(Message.insert(data: data, for: url))
        insertionCompletions.append(completion)
    }
    
    func retrieve(dataForURL url: URL, completion: @escaping (FeedImageDataStore.RetrievalResult) -> Void) {
        receivedMessages.append(Message.retrieve(dataFor: url))
        retrievalCompletions.append(completion)
    }
    
    func completeRetrieval(with error: Error, at index: Int = 0) {
        retrievalCompletions[index](.failure(error))
    }
    
    func completeRetrieval(with data: Data?, at index: Int = 0) {
        retrievalCompletions[index](.success(data))
    }
    
    func completeInsertion(with error: Error, at index: Int = 0) {
        insertionCompletions[index](.failure(error))
    }
    
    func completeInsertionSuccessfully(at index: Int = 0) {
        insertionCompletions[index](.success(()))
    }
}
