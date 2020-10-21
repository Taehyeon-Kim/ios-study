//
//  CircleView.swift
//  autolayout04-programmatically
//
//  Created by taehy.k on 2020/10/21.
//

import UIKit

class CircleView: UIView {
    
    override func layoutSubviews() {
        super.layoutSubviews() // 오버라이드시 강제
        print("CircleView - layoutSubviews() called")
        self.layer.cornerRadius = self.frame.height / 2
    }
}
