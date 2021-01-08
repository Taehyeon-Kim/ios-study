//
//  SFSymbolItem.swift
//  CollectionViewTest
//
//  Created by taehy.k on 2021/01/08.
//

import UIKit

struct SFSymbolItem: Hashable {
    let name: String
    let image: UIImage
    
    init(name: String) {
        self.name = name
        self.image = UIImage(systemName: name)!
    }
    
}
