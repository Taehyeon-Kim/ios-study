//
//  ViewController.swift
//  autolayout04-programmatically
//
//  Created by taehy.k on 2020/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    // 클로저로 뷰 설정
    var SecondVC: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    var circleVC: CircleView  = {
        let view = CircleView()
        view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // View를 생성해서, 스토리보드 View의 하위요소로 추가
        let FirstVC = UIView()
        FirstVC.translatesAutoresizingMaskIntoConstraints = false
        FirstVC.backgroundColor = .systemRed
        self.view.addSubview(FirstVC)
        
        FirstVC.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        FirstVC.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        
        FirstVC.widthAnchor.constraint(equalToConstant: 100).isActive = true
        FirstVC.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        FirstVC.layer.cornerRadius = 20
        
        self.view.addSubview(SecondVC)
        SecondVC.leadingAnchor.constraint(equalTo: FirstVC.leadingAnchor, constant: 10).isActive = true
        SecondVC.topAnchor.constraint(equalTo: FirstVC.bottomAnchor, constant: 120).isActive = true
        
        SecondVC.widthAnchor.constraint(equalToConstant: 50).isActive = true
        SecondVC.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        self.view.addSubview(circleVC)
        circleVC.widthAnchor.constraint(equalTo: SecondVC.widthAnchor, multiplier: 1.5).isActive = true
        circleVC.heightAnchor.constraint(equalTo: SecondVC.heightAnchor, multiplier: 1.5).isActive = true
        circleVC.topAnchor.constraint(equalTo: SecondVC.bottomAnchor, constant: 50).isActive = true
        circleVC.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }


}


// 전처리기를 사용해서 build전에, preview하겠다.
// UIViewControllerRepresentable 클래스 상속
#if DEBUG

import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {

    // update
    func updateUIViewController(_ uiViewController: UIViewController, context: Context){

    }

    // make UI
    @available(iOS 13.0, *)
    func makeUIViewController(context: Context) -> UIViewController {
        ViewController()
    }
}

struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
}

#endif
