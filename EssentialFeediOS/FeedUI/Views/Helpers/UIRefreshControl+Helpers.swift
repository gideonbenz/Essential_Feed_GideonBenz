//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Gideon Benz on 06/05/22.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
