//
//  FoodTableViewCell.swift
//  TableView01
//
//  Created by taehy.k on 2020/10/15.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var foodnameLabel: UILabel!
    
    var food: Food! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        thumbnailImageView.image = UIImage(named: food.thumbnailFileName)
        thumbnailImageView.layer.cornerRadius = 8.0
        thumbnailImageView.layer.masksToBounds = true
        foodnameLabel.text = food.foodName
    }
}
