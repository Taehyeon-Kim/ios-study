//
//  Card.swift
//  CollectionView04-Card-Layout
//
//  Created by taehy.k on 2020/10/28.
//

import UIKit

class Card {
    
    // MARK: - Public API
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color: UIColor) {
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
    }
    
    // MARK: - Private
    // dummy data
    static func fetchCards() -> [Card] {
        return [
            Card(title: "Image01", featuredImage: UIImage(named: "image01")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Card(title: "Image02", featuredImage: UIImage(named: "image02")!, color: UIColor(red: 163/255.0, green: 71/255.0, blue: 180/255.0, alpha: 0.8)),
            Card(title: "Image03", featuredImage: UIImage(named: "image03")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Card(title: "Image04", featuredImage: UIImage(named: "image04")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Card(title: "Image05", featuredImage: UIImage(named: "image05")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Card(title: "Image06", featuredImage: UIImage(named: "image06")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Card(title: "Image07", featuredImage: UIImage(named: "image07")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
        ]
    }
}
