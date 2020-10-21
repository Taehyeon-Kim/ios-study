//
//  CircleButton.swift
//  autolayout03-StackView
//
//  Created by taehy.k on 2020/10/20.
//

import Foundation
import UIKit

// 인터페이스 빌더(스토리보드) 디자인으로 확인 가능하게끔 어노테이션
@IBDesignable
class CircleButton: UIButton {
    
    // 인터페이스 빌더에 필드를 하나 만든다.
    // 인스펙터 패널 : IBInspectable
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        // 프로퍼티 옵저버 : 값 설정 시 호출
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
