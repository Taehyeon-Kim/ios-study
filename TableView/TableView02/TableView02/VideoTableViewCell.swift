//
//  VideoTableViewCell.swift
//  TableView02
//
//  Created by taehy.k on 2020/10/16.
//

import UIKit

class VideoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailInfoLabel: UILabel!
    @IBOutlet weak var playtime: UILabel!
    
    
    var video: Video! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        thumbImage.image = UIImage(named: video.thumbnailFileName)
        profileImage.image = UIImage(named: video.profileFileName)
        titleLabel.text = video.title
        detailInfoLabel.text = video.detailInfo
        playtime.text = video.playtime
        
        profileImage.layer.cornerRadius = profileImage.frame.height/2
//        profileImage.layer.masksToBounds = true
        playtime.layer.cornerRadius = 2.0
        playtime.layer.masksToBounds = true
    }
}
