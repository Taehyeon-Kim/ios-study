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
        setNavigationBarTitle()
//        setNavigationBarRight()
    }
    
    func setNavigationBarTitle() {
        // 로고 + 타이틀을 담을 컨테이너 역할 - 통째로 이미지로 넣는 것이 더 깔끔할듯
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width - 32, height: (self.navigationController?.navigationBar.frame.height)!))
        
        // 로고 이미지
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(frame: CGRect(x: 0, y: 5, width: 36, height: 36))
        logoView.contentMode = .scaleAspectFill
        logoView.image = logo
        
        titleView.addSubview(logoView)
        
        
        // 타이틀 텍스트
        let title = UILabel(frame: CGRect(x: 40, y: 5, width: 150, height: 36))
        
        title.textColor = .black
        title.font = .boldSystemFont(ofSize: 20)
        title.text = "Premium"
        
        titleView.addSubview(title)
        
        self.navigationItem.titleView = titleView
    }
    
//    func setNavigationBarRight() {
//        // 검색
//        let searchBtn = UIButton(type: .custom)
//        searchBtn.frame = CGRect(x: 0.0, y: 0.0, width: 16, height: 16)
//        searchBtn.setImage(UIImage(named:"search"), for: .normal)
//
//        let search = UIBarButtonItem(customView: searchBtn)
//        let firstWidth = search.customView?.widthAnchor.constraint(equalToConstant: 24)
//        firstWidth?.isActive = true
//        let firstHeight = search.customView?.heightAnchor.constraint(equalToConstant: 24)
//        firstHeight?.isActive = true
//
//        // 비디오
//        let camBtn = UIButton(type: .custom)
//        camBtn.frame = CGRect(x: 0.0, y: 0.0, width: 16, height: 16)
//        camBtn.setImage(UIImage(named:"video-call"), for: .normal)
//
//        let cam = UIBarButtonItem(customView: camBtn)
//        let currWidth = cam.customView?.widthAnchor.constraint(equalToConstant: 24)
//        currWidth?.isActive = true
//        let currHeight = cam.customView?.heightAnchor.constraint(equalToConstant: 24)
//        currHeight?.isActive = true
//
//        // 캐스트
//        let castBtn = UIButton(type: .custom)
//        castBtn.frame = CGRect(x: 0.0, y: 0.0, width: 16, height: 16)
//        castBtn.setImage(UIImage(named:"google-cast-logo"), for: .normal)
//
//        let cast = UIBarButtonItem(customView: castBtn)
//
//        let secondWidth = cast.customView?.widthAnchor.constraint(equalToConstant: 24)
//        secondWidth?.isActive = true
//        let secondHeight = cast.customView?.heightAnchor.constraint(equalToConstant: 24)
//        secondHeight?.isActive = true
//
//        self.navigationItem.setRightBarButtonItems([search, cam, cast], animated: true)
//    }
    

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

    //MARK: - Table view delegate
    
}

