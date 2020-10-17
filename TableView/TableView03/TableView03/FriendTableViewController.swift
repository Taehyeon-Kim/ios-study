//
//  FriendTableViewController.swift
//  TableView03
//
//  Created by taehy.k on 2020/10/17.
//

import UIKit

class FriendTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
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
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "friendTableCell") as? FriendTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
}

