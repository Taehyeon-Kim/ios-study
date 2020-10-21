//
//  CompletedVC.swift
//  autolayout03-StackView
//
//  Created by taehy.k on 2020/10/20.
//

import UIKit

class CompletedVC: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet var buttons: [CircleButton]!
    @IBOutlet weak var callButton: CircleButton!
    
    var phoneNumberString = ""{
        // didSet이라는 것이 값이 설정되었을 때, 무언가 액션을 취하겠다는 의미
        didSet{
            // 메인 쓰레드에서 돌릴 것
            // ARC : retain 막기 위해 weak 처리
            // 컴플리션
            DispatchQueue.main.async { [weak self] in
                
                // 옵셔널 처리 (? or guard let)
                guard let self = self else { return }
                self.phoneNumberLabel.textColor = .black
                self.phoneNumberLabel.text = self.phoneNumberString
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for btnItem in buttons {
            btnItem.addTarget(self, action: #selector(onNumberBtnClicked(sender:)), for: .touchUpInside)
        }
        
        callButton.addTarget(self, action: #selector(onCallBtnClicked(_:)), for: .touchUpInside)
    }
    
    @objc fileprivate func onNumberBtnClicked(sender: UIButton){
        //언래핑
        guard let inputSring = sender.titleLabel?.text else {return}
        phoneNumberString.append(inputSring)
    }
    
    // _ 언더바는 매개변수이름을 지정하고 싶지 않을때
    @objc fileprivate func onCallBtnClicked(_ sender: UIButton) {
        phoneNumberString.removeAll()
    }
}
