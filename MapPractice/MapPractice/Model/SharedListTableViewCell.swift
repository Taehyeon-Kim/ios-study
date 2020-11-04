//
//  SharedListTableViewCell.swift
//  MapPractice
//
//  Created by taehy.k on 2020/11/01.
//

import UIKit

class SharedListTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var privacyLabel: UILabel!
    
    var sharedList: SharedList! {
        didSet {
            updateUI()
        }
    }


    func updateUI() {
        titleLabel.text = sharedList.title 
        privacyLabel.text = sharedList.privacy ? "private" : ""
    }
}
