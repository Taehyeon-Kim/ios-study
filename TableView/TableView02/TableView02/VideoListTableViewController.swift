//
//  VideoListTableViewController.swift
//  TableView02
//
//  Created by taehy.k on 2020/10/16.
//

import UIKit

class VideoListTableViewController: UITableViewController {
    
    var videos = Video.fetchVideos()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as! VideoTableViewCell

        let video = videos[indexPath.row]

        cell.video = video
        
        return cell
    }

}
