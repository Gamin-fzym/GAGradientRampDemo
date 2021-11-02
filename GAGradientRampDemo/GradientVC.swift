//
//  GradientVC.swift
//  GAGradientRampDemo
//
//  Created by MaciOS on 2021/7/29.
//

import Foundation
import UIKit

class GradientVC: UIViewController {
    
    
    @IBOutlet weak var butOne: GradientCustomButton!
    @IBOutlet weak var viewTwo: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// 方式一 xib添加渐变色
        
        /// 方式一 代码添加渐变色
        butOne.isGradient = true
        butOne.startColor = UIColor(hexString: "#FD0134")!
        butOne.endColor = UIColor(hexString: "#007AFF")!
        butOne.startPoint = CGPoint(x: 0,y: 0)
        butOne.endPoint = CGPoint(x: 1,y: 1)
        
        /// 方式二
        //viewTwo.addGradient(start_color: "#8238FF", end_color: "#007AFF")
        //viewTwo.layer.masksToBounds = true
        viewTwo.addGradient(colors: [UIColor(hexString: "#FD0134")!, UIColor(hexString: "#007AFF")!],
                            point: (CGPoint(x: 1.0, y: 0.0), CGPoint(x: 0.0, y: 1.0)),
                            frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width-40, height: 100),
                            radius: 0)

    }
}
