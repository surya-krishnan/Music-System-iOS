//
//  UIViewExtension.swift
//  InstrumentChecker
//
//  Created by Surya Krishnan on 2019-12-25.
//  Copyright © 2019 Surya Krishnan. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setGradientBackground (colourOne: UIColor, colourTwo: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colourOne.cgColor, colourTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
}

