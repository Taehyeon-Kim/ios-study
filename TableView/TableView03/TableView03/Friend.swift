//
//  friend.swift
//  TableView03
//
//  Created by taehy.k on 2020/10/17.
//

import Foundation

struct Friend {
    let avatarImageURL: String
    let userName: String
    let statusMessage: String
    
    static func fetchFriend() -> [Friend] {
        let f1 = Friend(avatarImageURL: "avatar1", userName: "김태현", statusMessage: "지금은 iOS 공부 중!! 👨🏻‍💻")
        let f2 = Friend(avatarImageURL: "avatar2", userName: "김봄", statusMessage: "🌱 봄이 왔습니다! 봄이")
        let f3 = Friend(avatarImageURL: "avatar3", userName: "김여름", statusMessage: "⛱ 수영하고 싶다... 해수욕장 ㅠㅠ")
        let f4 = Friend(avatarImageURL: "avatar4", userName: "김가을", statusMessage: "🍁 가을인데 왜 이렇게 춥냐..")
        let f5 = Friend(avatarImageURL: "avatar5", userName: "김겨울", statusMessage: "🔥🔥 겨울에는 산불 조심!!!")
        let f6 = Friend(avatarImageURL: "avatar6", userName: "김방학", statusMessage: "✈️ 연락안됩니다.. 방학동안 쉴 예정")
        
        return [f1, f2, f3, f4, f5, f6]
    }
}
