//
//  FeedTableViewCell.swift
//  autolayout01
//
//  Created by taehy.k on 2020/10/19.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView?
    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var introductionLabel: UILabel?
    @IBOutlet weak var contentsLabel: UILabel?
    
    // UI custom code 분리
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImageView?.layer.cornerRadius = (profileImageView?.frame.width)! / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
