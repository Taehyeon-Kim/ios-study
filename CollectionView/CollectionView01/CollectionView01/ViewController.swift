//
//  ViewController.swift
//  CollectionView01
//
//  Created by taehy.k on 2020/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
//        self.collectionView.reloadData()
    }


}


// MARK: - UICollectionView Delegate
// interaction
extension ViewController: UICollectionViewDelegate {
    
}


// MARK: - UICollectionView DataSource
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 49
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        
        return cell
    }
}



// MARK: - UICollectionView DelegateFlowLayout
// custom layout
//extension ViewController: UICollectionViewDelegateFlowLayout {
//
//}
