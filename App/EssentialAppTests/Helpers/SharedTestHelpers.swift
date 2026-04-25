//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Costa Monzili on 27/08/2023.
//

import Foundation
import EssentialFeed

var anyData: Data {
    return Data("any data".utf8)
}

var anyURL: URL {
    return URL(string: "http://any-url.com")!
}

var anyNSError: NSError {
    return NSError(domain: "any", code: 0)
}

func uniqueFeed() -> [FeedImage] {
    return [FeedImage(id: UUID(), description: "any", location: "any", url: anyURL)]
}

private class DummyView: ResourceView {
    func display(_ viewModel: Any) {}
}

var loadError: String {
    LoadResourcePresenter<Any, DummyView>.loadError
}

var feedTitle: String {
    FeedPresenter.title
}

var commentsTitle: String {
    ImageCommentsPresenter.title
}
