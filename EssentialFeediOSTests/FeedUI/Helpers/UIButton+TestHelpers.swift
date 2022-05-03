//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Gideon Benz on 03/05/22.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
