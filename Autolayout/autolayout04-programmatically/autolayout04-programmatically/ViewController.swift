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
        view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    var circleVC: CircleView  = {
        let view = CircleView()
        view.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
//        view.clipsToBounds = true
        return view
    }()
    
    var logoView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "logo"))
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var searchLogo: UIButton = {
        let view = UIButton()
        view.setBackgroundImage(UIImage(named: "search"), for: UIControl.State.normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var castLogo: UIButton = {
        let view = UIButton()
        view.setBackgroundImage(UIImage(named: "cast"), for: UIControl.State.normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var videoLogo: UIButton = {
        let view = UIButton()
        view.setBackgroundImage(UIImage(named: "video"), for: UIControl.State.normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 20
        view.distribution = .fillEqually
        return view
    }()
    

    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // centerXanchor : view frame의 horizontal center를 나타냄
        // 즉 수평정렬을 위해 사용
        
        // View를 생성해서, 스토리보드 View의 하위요소로 추가
        let FirstVC = UIView()
        FirstVC.translatesAutoresizingMaskIntoConstraints = false
        FirstVC.backgroundColor = .systemRed
        self.view.addSubview(FirstVC)

        FirstVC.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        FirstVC.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive = true
        FirstVC.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true

        FirstVC.heightAnchor.constraint(equalToConstant: 250).isActive = true



        self.view.addSubview(SecondVC)
        SecondVC.leadingAnchor.constraint(equalTo: FirstVC.leadingAnchor, constant: 0).isActive = true
        SecondVC.topAnchor.constraint(equalTo: FirstVC.bottomAnchor, constant: 20).isActive = true
        SecondVC.trailingAnchor.constraint(equalTo: FirstVC.trailingAnchor, constant: 0).isActive = true

        SecondVC.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        
        // 로고 뷰 추가
        self.view.addSubview(logoView)
        NSLayoutConstraint.activate([
            // width, height
            logoView.widthAnchor.constraint(equalToConstant: 100),
            logoView.heightAnchor.constraint(equalToConstant: 100),
            
            // position
            logoView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30),
            logoView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
        ])
        
        
        
        
        
        
        stackView.addArrangedSubview(castLogo)
        stackView.addArrangedSubview(videoLogo)
        stackView.addArrangedSubview(searchLogo)
        stackView.addArrangedSubview(circleVC)
        
        
        NSLayoutConstraint.activate([
            searchLogo.widthAnchor.constraint(equalToConstant: 30),
            searchLogo.heightAnchor.constraint(equalToConstant: 30),
            
        ])
        

        NSLayoutConstraint.activate([
            castLogo.widthAnchor.constraint(equalToConstant: 30),
            castLogo.heightAnchor.constraint(equalToConstant: 30),
            
        ])
        
        NSLayoutConstraint.activate([
            videoLogo.widthAnchor.constraint(equalToConstant: 30),
            videoLogo.heightAnchor.constraint(equalToConstant: 30),
            
        ])
        
        view.addSubview(stackView)
        
        stackView.centerYAnchor.constraint(equalTo: logoView.centerYAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true

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
            .ignoresSafeArea()
            .previewDisplayName("미리보기")
    }
}

#endif
