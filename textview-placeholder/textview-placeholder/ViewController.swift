//
//  ViewController.swift
//  textview-placeholder
//
//  Created by taehy.k on 2020/10/30.
//

import UIKit
import UITextView_Placeholder

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTextView.placeholder = "이것은 텍스트뷰의 placeholder입니다!"
        myTextView.placeholderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }


}

