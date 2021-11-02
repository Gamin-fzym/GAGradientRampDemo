//
//  GradientCustomView.swift
//  GAGradientRampDemo
//
//  Created by MaciOS on 2021/7/29.
// 视图渐变色

import Foundation
import UIKit

class GradientCustomView: UIView {
    
    @IBInspectable var isGradient: Bool = false
    @IBInspectable var startColor: UIColor = .white
    @IBInspectable var endColor: UIColor = .white
    @IBInspectable var locations: [NSNumber] = [0 , 1]
    @IBInspectable var startPoint: CGPoint = .zero
    @IBInspectable var endPoint: CGPoint = .zero
    
    private var gradientBGLayer: CAGradientLayer?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientBGLayer?.removeFromSuperlayer()
        if isGradient {
            gradientBGLayer = CAGradientLayer()
            gradientBGLayer!.colors = [startColor.cgColor, endColor.cgColor]
            gradientBGLayer!.locations = locations
            gradientBGLayer!.frame = bounds
            gradientBGLayer!.startPoint = startPoint
            gradientBGLayer!.endPoint = endPoint
            self.layer.insertSublayer(gradientBGLayer!, at: 0)
        }
    }

}

class GradientCustomButton: UIButton {
    
    @IBInspectable var isGradient: Bool = false
    @IBInspectable var startColor: UIColor = .white
    @IBInspectable var endColor: UIColor = .white
    @IBInspectable var locations: [NSNumber] = [0 , 1]
    @IBInspectable var startPoint: CGPoint = .zero
    @IBInspectable var endPoint: CGPoint = .zero
    
    private var gradientBGLayer: CAGradientLayer?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientBGLayer?.removeFromSuperlayer()
        if isGradient {
            gradientBGLayer = CAGradientLayer()
            gradientBGLayer!.colors = [startColor.cgColor, endColor.cgColor]
            gradientBGLayer!.locations = locations
            gradientBGLayer!.frame = bounds
            gradientBGLayer!.startPoint = startPoint
            gradientBGLayer!.endPoint = endPoint
            self.layer.insertSublayer(gradientBGLayer!, at: 0)
        }
    }
    
}

