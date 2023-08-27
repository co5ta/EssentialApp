//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Costa Monzili on 27/08/2023.
//

import Foundation

var anyData: Data {
    return Data("any data".utf8)
}

var anyURL: URL {
    return URL(string: "http://any-url.com")!
}

var anyNSError: NSError {
    return NSError(domain: "any", code: 0)
}
