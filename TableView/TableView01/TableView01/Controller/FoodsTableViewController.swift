//
//  FoodsTableViewController.swift
//  TableView01
//
//  Created by taehy.k on 2020/10/15.
//

import UIKit

class FoodsTableViewController: UITableViewController {
    
    var foods: [Food] = Food.getFoods()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foods.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell

        // Configure the cell...
        let food = foods[indexPath.row]
        cell.food = food

        return cell
    }

    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
