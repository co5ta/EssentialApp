//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Costa Monzili on 24/09/2023.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
