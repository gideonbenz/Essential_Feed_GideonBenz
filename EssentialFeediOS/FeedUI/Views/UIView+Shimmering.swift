//
//  UIView+Shimmering.swift
//  EssentialFeediOS
//
//  Created by Gideon Benz on 18/04/22.
//

import UIKit

extension UIView {
    public var isShimmering: Bool {
        return layer.mask?.animation(forKey: shimmeringAnimationKey) != nil
    }
    
    public var shimmeringAnimationKey: String {
        return "shimmer"
    }
    
    func startShimmering() {
        let white = UIColor.white.cgColor
        let alpha = UIColor.white.withAlphaComponent(0.75).cgColor
        let width = bounds.width
        let height = bounds.height
        
        let gradient = CAGradientLayer()
        gradient.colors = [alpha, white, alpha]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.4)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.6)
        gradient.locations = [0.4, 0.5, 0.6]
        gradient.frame = CGRect(x: -width, y: 0, width: width*3, height: height)
        layer.mask = gradient
        
        let animations = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.locations))
        animations.fromValue = [0.0, 0.1, 0.2]
        animations.toValue = [0.8, 0.9, 1.0]
        animations.duration = 1.25
        animations.repeatCount = .infinity
        gradient.add(animations, forKey: shimmeringAnimationKey)
    }
    
    func stopShimmering() {
        layer.mask = nil
    }
}
