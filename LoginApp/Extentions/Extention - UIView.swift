//
//  Extention - UIView.swift
//  LoginApp
//
//  Created by Arseniy Oksenoyt on 8/1/23.
//

import UIKit

// MARK: - Set Background Color

extension UIView {
    func addVerticalGradienLayer() {
        let primaryColor = UIColor(red: 200/255, green: 100/255, blue: 230/255, alpha: 1)
        let secondaryColor = UIColor(red: 100/255, green: 1/255, blue: 200/255, alpha: 1)
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
