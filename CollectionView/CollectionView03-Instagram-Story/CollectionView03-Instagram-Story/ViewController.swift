//
//  ViewController.swift
//  CollectionView03-Instagram-Story
//
//  Created by taehy.k on 2020/10/25.
//

import UIKit

// CollectionView 사용 시 3가지 프로토콜 사용
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    // Inset , Offset
    // inset : 하위 뷰의 padding을 의미 - UIEdgeInset
    // offset : point를 의미 (x,y 좌표)
    
    // optional - private: 해당 func, extension, 선언된 코드 안에서 사용 가능
    private var collectionView: UICollectionView?
    
    private let models = ["image01", "image02", "image03", "image04", "image05", "image06", "image07", "image01", "image02", "image03", "image04", "image05", "image06", "image07", "image01", "image02", "image03", "image04", "image05", "image06", "image07", ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // flow layout으로 지정 이유 - 커스텀 위해
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal                                        // 수평 (horizontal)
        layout.itemSize = CGSize(width: 75, height: 75)                           // 아이템 크기
        // UIEdgeInsets? - View frame을 수정하기 위해 사용 (양의 값 - 수축(frame 크기가 줄어듬), 음의 값 - 확장(frame 크기가 늘어남))
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) // 상하좌우 패딩이 없다고 생각하면 될 듯
        
        // 필수 지정 - 이 부분 왜 지정? // 초기화 위함인데 collection view flow layout을 이용해서 Custom하기 위함
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        // register (윗 코드와 순서가 반드시 잘 지켜져야 에러가 발생하지 않음)
        collectionView?.register(CircleCollectionViewCell.self, forCellWithReuseIdentifier: CircleCollectionViewCell.identifier)
        
        // 스크롤바 (scroll indicator) 제거
        collectionView?.showsHorizontalScrollIndicator = false
        
        
        // delegate 지정
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = .white
        
        // 옵셔널 바인딩 해주어서 처리
        guard let myCollection = collectionView else {
            return
        }
        
        view.addSubview(myCollection) // nil이 아닐 때만 하위 뷰로 추가
    }
    
    // 레이아웃 마무리 된 다음에, 레이아웃 조정
    // 레이아웃이 결정되고 나서 다음과 같은 마무리 작업을 수행하고자 한다면 이 메서드를 override하여 사용한다.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView?.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 75).integral // integral?
    }

    // 필수 선언 : number of items in section, cell for item
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CircleCollectionViewCell.identifier, for: indexPath) as! CircleCollectionViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
}

