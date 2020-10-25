//
//  CircleCollectionViewCell.swift
//  CollectionView03-Instagram-Story
//
//  Created by taehy.k on 2020/10/25.
//

import UIKit

class CircleCollectionViewCell: UICollectionViewCell {
    
    // need to register collectionViewCell
    static let identifier = "CircleCollectionViewCell"
    
    // clipsToBounds, masksToBounds
    // contentMode
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 75.0 / 2.0
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
//        imageView.layer.borderColor = UIColor.link.cgColor //cgColor? link?
        
        imageView.backgroundColor = .blue
        
        
        return imageView
    }()
    
    // init에서의 background - collectionViewCell의 contentView 이군.
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(myImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // layoutSubviews?
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
    }
    
    // configure?
    public func configure(with name: String) {
        myImageView.image = UIImage(named: name)
    }
    
    
    // prepareForReuse?
    override func prepareForReuse() {
        super.prepareForReuse()
        myImageView.image = nil
    }
}
