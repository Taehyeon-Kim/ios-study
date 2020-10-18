//
//  FriendTableViewController.swift
//  TableView03
//
//  Created by taehy.k on 2020/10/17.
//

import UIKit

class FriendTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var friends = Friend.fetchFriend()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 이 line이 있고 없고의 차이는 무엇일까?
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        registerXib()
    }
    
    private func registerXib() {
        let friendNibName = UINib(nibName: "FriendTableViewCell", bundle: nil)
        tableView.register(friendNibName, forCellReuseIdentifier: "friendTableCell")
        
        let myNibName = UINib(nibName: "MyTableViewCell", bundle: nil)
        tableView.register(myNibName, forCellReuseIdentifier: "myTableCell")
    }
    
}

// 지훈이 source 참고
extension FriendTableViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let friendCnt = "친구 \(friends.count)"
        
        if section == 1
        {
            return friendCnt
        } else {
            return ""
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // My
        if section == 0 {
            return 1
        }
        // Friend
        else if section == 1 {
            return friends.count
        }
        else {
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 {
            return 64
        }
        else {
            return 80
        }
    }
    
    // section seperator
    // height를 1만큼 줬는데 너무 크게 나옴 (heightforfooterinsection이랑 같이 사용)
    // 화면 너비에 딱 맞추는 건 uiview 하나만 지정해도 되는데
    // seperator line 너비를 조정하려면 subview를 추가해서 조정
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 0 {
            let v = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 1))
            let sepLine = UIView(frame: CGRect(x: 20, y: 0, width: 375, height: 1))
            sepLine.backgroundColor = #colorLiteral(red: 0.8340784907, green: 0.8280499578, blue: 0.8386946917, alpha: 1)
            v.addSubview(sepLine)
            return v
        }
        else {
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        
        if section == 1 {
            view.tintColor = .white
            
            header.textLabel?.textColor = .lightGray
            header.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 13)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 1{
            guard let friendCell = tableView.dequeueReusableCell(withIdentifier: "friendTableCell") as? FriendTableViewCell else {
                return UITableViewCell()
            }
            
            let friend = friends[indexPath.row]
            
            friendCell.avatarImageView?.image = UIImage(named: friend.avatarImageURL)
            friendCell.userNameLabel?.text = friend.userName
            friendCell.statusMessageLabel?.text = friend.statusMessage
            
            friendCell.avatarImageView?.layer.cornerRadius = 12.0
            
            return friendCell
        }
        
        else {
            guard let myCell = tableView.dequeueReusableCell(withIdentifier: "myTableCell") as? MyTableViewCell else {
                return UITableViewCell()
            }
            
            myCell.avatarImageView?.image = UIImage(named: "avatar0")
            myCell.userNameLabel?.text = "김태현"
            myCell.statusMessageLabel.text = "👨🏻‍💻🔥 카카오톡 친구 목록 만들기"
            
            myCell.avatarImageView?.layer.cornerRadius = 16.0
            
            return myCell
        }
        
    }
    
}

