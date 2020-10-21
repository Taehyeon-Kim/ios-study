//
//  SecondChallengeVC.swift
//  autolayout03-StackView
//
//  Created by taehy.k on 2020/10/20.
//

import UIKit

class SecondChallengeVC: UIViewController {
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet var numberButtons: [CircleButton]!
    @IBOutlet weak var callButton: CircleButton!
    
    var phoneNumberString = ""{
        didSet{
            self.phoneNumberLabel.text = phoneNumberString
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberLabel.text = ""
        
        for btn in numberButtons {
            btn.addTarget(self, action: #selector(numberButtonsClicked(_:)), for: .touchUpInside)
        }
        
        callButton.addTarget(self, action: #selector(callButtonClicked(_:)), for: .touchUpInside)
    }
    
    
    @objc fileprivate func numberButtonsClicked(_ sender: UIButton) {
        // 언래핑
        guard let num = sender.titleLabel?.text else { return }
        phoneNumberString.append(num)
    }
    
    @objc fileprivate func callButtonClicked(_ sender: UIButton) {
        phoneNumberString.removeAll()
    }

}
