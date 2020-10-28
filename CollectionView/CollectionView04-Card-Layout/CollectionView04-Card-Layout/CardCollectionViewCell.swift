//
//  CardCollectionViewCell.swift
//  CollectionView04-Card-Layout
//
//  Created by taehy.k on 2020/10/28.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var backgroundColorView: UIView!
    @IBOutlet weak var cardTitleLabel: UILabel!
    
    var card: Card! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let card = card {
            featuredImageView.image = card.featuredImage
            cardTitleLabel.text = card.title
            backgroundColorView.backgroundColor = card.color
        } else {
            featuredImageView.image = nil
            cardTitleLabel.text = nil
            backgroundColorView.backgroundColor = nil
        }
        
        backgroundColorView.layer.cornerRadius = 10.0
        backgroundColorView.layer.masksToBounds = true
        featuredImageView.layer.cornerRadius = 10.0
        featuredImageView.layer.masksToBounds = true
    }
}
