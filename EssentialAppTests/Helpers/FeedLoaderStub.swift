//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Costa Monzili on 27/08/2023.
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result

    init(result: FeedLoader.Result) {
        self.result = result
    }

    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
