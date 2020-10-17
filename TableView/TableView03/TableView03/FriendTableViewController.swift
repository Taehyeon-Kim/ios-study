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

        // Do any additional setup after loading the view.
        registerXib()
    }
    
    private func registerXib() {
        let nibName = UINib(nibName: "FriendTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "friendTableCell")
    }
    
}

extension FriendTableViewController: UITableViewDataSource, UITabBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendTableCell") as! FriendTableViewCell
        
        let friend = friends[indexPath.row]
        
        cell.avatarImageView?.image = UIImage(named: friend.avatarImageURL)
        cell.userNameLabel?.text = friend.userName
        cell.statusMessageLabel?.text = friend.statusMessage
        
        return cell
    }
    
}

