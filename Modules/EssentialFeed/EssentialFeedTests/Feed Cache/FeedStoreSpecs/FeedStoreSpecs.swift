//
//  FeedStoreSpecs.swift
//  EssentialFeedTests
//
//  Created by Costa Monzili on 27/04/2023.
//

import Foundation

protocol FeedStoreSpecs {
    func test_retrieve_deliversEmptyOnEmptyCache() throws
    func test_retrieve_hasNoSideEffectOnEmptyCache() throws
    func test_retrieve_deliversFoundValuesOnNonEmptyCache() throws
    func test_retrieve_hasNoSideEffectOnNonEmptyCache() throws

    func test_insert_deliversNoErrorOnEmptyCache() throws
    func test_insert_deliversNoErrorOnNonEmptyCache() throws
    func test_insert_overridesPreviouslyInsertedCacheValues() throws

    func test_delete_deliversNoErrorOnEmptyCache() throws
    func test_delete_hasNoSideEffectOnEmptyCache() throws
    func test_delete_deliversNoErrorOnNonEmptyCache() throws
    func test_delete_emptiesPreviouslyInsertedCache() throws
}

protocol FailableRetrieveFeedStoreSpecs: FeedStoreSpecs {
    func test_retrieve_deliversFailureOnRetrievalError() throws
    func test_retrieve_hasNoSideEffectOnFailure() throws
}

protocol FailableInsertFeedStoreSpecs: FeedStoreSpecs {
    func test_insert_deliversErrorOnInsertionError() throws
    func test_insert_hasNoSideEffectOnInsertionError() throws
}

protocol FailableDeleteFeedStoreSpecs: FeedStoreSpecs {
    func test_delete_deliversErrorOnDeletionFailure() throws
    func test_delete_hasNoSideEffectOnDeletionFailure() throws
}

typealias FailableFeedStore = FailableRetrieveFeedStoreSpecs & FailableInsertFeedStoreSpecs & FailableDeleteFeedStoreSpecs
