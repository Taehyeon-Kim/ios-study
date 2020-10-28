//
//  MyTagListViewController.swift
//  TagListView-Hashtags
//
//  Created by taehy.k on 2020/10/28.
//

import UIKit
import TagListView

class MyTagListViewController: UIViewController {
    @IBOutlet weak var myTagListView: TagListView!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTagListView.delegate = self
        addButton.addTarget(self, action: #selector(addTag), for: .touchUpInside)
    }
    
    @objc fileprivate func addTag() {
        let userInput = inputField.text ?? ""
        
        if userInput.count > 1 {
            myTagListView.addTag(userInput)
            inputField.text = ""
        } else {
            let alert = UIAlertController(title: "태그를 입력해주세요", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }

}

extension MyTagListViewController: TagListViewDelegate {
    // 태그 선택
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
        tagView.isSelected.toggle()
    }
    
    // 태그 삭제
    func tagRemoveButtonPressed(_ title: String, tagView: TagView, sender: TagListView) {
        sender.removeTagView(tagView)
    }
}
