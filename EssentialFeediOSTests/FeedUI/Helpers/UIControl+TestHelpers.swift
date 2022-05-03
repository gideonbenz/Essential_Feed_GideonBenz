//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Gideon Benz on 03/05/22.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
