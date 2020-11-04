//
//  SharedListData.swift
//  MapPractice
//
//  Created by taehy.k on 2020/11/01.
//

import Foundation

struct SharedList {
    let title: String
    let privacy: Bool
    
    init(title: String, privacy: Bool) {
        self.title = title
        self.privacy = privacy
    }
    
    // static으로 선언해주어야 사용 가능
    static func fetchList() -> [SharedList] {
        let group1 = SharedList(title: "🍞빵빵빵🍞", privacy: false)
        let group2 = SharedList(title: "비둘기 다수 출몰 지역 🕊", privacy: true)
        let group3 = SharedList(title: "Sports/Activity⚽️🏐🏀", privacy: true)
        let group4 = SharedList(title: "컴퓨터교육과 16학번 맛킷리스트", privacy: false)
        
        return [group1, group2, group3, group4]
    }
}
