//
//  FoodsTableViewController.swift
//  TableView01
//
//  Created by taehy.k on 2020/10/15.
//

import UIKit

class FoodsTableViewController: UITableViewController {
    
    var foods = ["food1", "food2", "food3"]

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foods.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)

        // Configure the cell...
        let food = foods[indexPath.row]
        cell.textLabel?.text = food

        return cell
    }

}
