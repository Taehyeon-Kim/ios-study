//
//  ViewController.swift
//  autolayout03-StackView
//
//  Created by taehy.k on 2020/10/20.
//

import UIKit

class FirstChallengeVC: UIViewController {
    
    //  this class is not key value coding-compliant for the key button
    // 스토리보드에서 참조하고 있는 IBOutlet을 소스상에서 못찾게 되는 경우 나오는 에러
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultLabel.text = ""
        
        print(buttons.count)
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        print(sender.currentTitle!)
        self.resultLabel.text?.append(sender.currentTitle!)
    }
    

}

