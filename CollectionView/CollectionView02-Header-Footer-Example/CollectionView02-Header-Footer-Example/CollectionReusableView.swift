//
//  HeaderCollectionReusableView.swift
//  CollectionView02-Header-Footer-Example
//
//  Created by taehy.k on 2020/10/23.
//

import UIKit

// CollectionReusableView란?
class HeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "HeaderCollectionReusableView"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "header"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with showColor: Bool) {
        if showColor {
            imageView.isHidden = true
            backgroundColor = .systemRed
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
}

class FooterCollectionReusableView: UICollectionReusableView {
    static let identifier = "FooterCollectionReusableView"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "gradient"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
}
