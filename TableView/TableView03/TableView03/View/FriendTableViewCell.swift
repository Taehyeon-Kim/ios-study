//
//  FriendTableViewCell.swift
//  TableView03
//
//  Created by taehy.k on 2020/10/17.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView?
    @IBOutlet weak var userNameLabel: UILabel?
    @IBOutlet weak var statusMessageLabel: UILabel?

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}



