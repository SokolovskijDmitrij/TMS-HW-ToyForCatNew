//
//  UIView+AdditionalProperties.swift
//  Homework 11
//
//  Created by Дмитрий Соколовский on 4.05.22.
//

import UIKit

extension UIButton {
    
    func roundCorners(withRadius radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.sublayers?.forEach {
            $0.cornerRadius = radius
        }
    }
    
    func makeRound() {
        let sideSize = min(self.frame.height, self.frame.width)
        roundCorners(withRadius: sideSize / 2)
    }
    
    func addGradient(withColors colors: [UIColor]) {
        let gradient = CAGradientLayer()
        
        gradient.frame = self.bounds
        gradient.colors = colors.map{ $0.cgColor }
        gradient.cornerRadius = self.layer.cornerRadius
        
        gradient.startPoint = CGPoint(x: 1, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func addShadow() {
           self.layer.shadowColor = UIColor.yellow.cgColor
           self.layer.shadowOpacity = 10
           self.layer.shadowOffset = .zero
           self.layer.shadowRadius = 50
           self.layer.masksToBounds = false
           self.layer.cornerRadius = 4.0
    }
}
