//
//  SharedListViewController.swift
//  MapPractice
//
//  Created by taehy.k on 2020/11/01.
//

import UIKit

class SharedListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var sharedLists = SharedList.fetchList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    

}


extension SharedListViewController: UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sharedLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SharedListCell", for: indexPath) as! SharedListTableViewCell
        
        cell.titleLabel?.text = self.sharedLists[indexPath.row].title
        cell.privacyLabel.text = self.sharedLists[indexPath.row].privacy ? "private" : ""
        
        cell.privacyLabel.layer.cornerRadius = 8.0
        cell.privacyLabel.layer.masksToBounds = true
        cell.privacyLabel.backgroundColor = .lightGray
        cell.privacyLabel.textColor = .white

        
        return cell
    }
    
    
}
