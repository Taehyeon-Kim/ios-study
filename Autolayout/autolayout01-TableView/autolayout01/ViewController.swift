//
//  ViewController.swift
//  autolayout01
//
//  Created by taehy.k on 2020/10/19.
//

import UIKit

class ViewController: UIViewController {
    var contents = [
        "simply dummy text of the printing and",
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.",
        "Lorem ipsum dolor sit amet.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec fermentum quam, id vehicula lacus. Nullam cursus tortor et mollis.",
        "드디어 어떤 것도 참고하지 않고, 화면 레이아웃 대로 테이블 뷰를 만들어냈다."
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 잘 연결해도 이 부분이 없으면 화면에 테이블 셀이 표시되지 않음.
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell") as! FeedTableViewCell
        
        cell.profileImageView?.image = UIImage(named: "avatar")
        cell.nameLabel?.text = "개발하는 김태끼"
        cell.introductionLabel?.text = "@학생개발자"
        cell.contentsLabel?.text = contents[indexPath.row]
        
        cell.profileImageView?.layer.cornerRadius = (cell.profileImageView?.frame.height)!/2
        
        return cell
    }
}
