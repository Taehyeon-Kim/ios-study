//
//  Video.swift
//  TableView02
//
//  Created by taehy.k on 2020/10/16.
//

import Foundation

struct Video {
    let title: String // 영상 제목
    let thumbnailFileName: String // 썸네일 이미지
    let profileFileName: String // 작성자 프로필 이미지
    let detailInfo: String // 작성자, 조회수, 시간 (각각 나눠야 할 듯)
    let playtime: String
    
    static func fetchVideos() -> [Video] {
        let v1 = Video(title: "혼자 공부하기 좋은 카페 BEST5! 날도 추운데 카페가서 공부하자", thumbnailFileName: "image01", profileFileName: "image01", detailInfo: "태현티비 · 조회수 972회 · 12분 전", playtime: "10:42")
        let v2 = Video(title: "나만 알고 싶지 않은 유용한 맥 유틸리티 프로그램 5종 소개합니다", thumbnailFileName: "image02", profileFileName: "image02", detailInfo: "태현티비 · 조회수 5만회 · 3일 전", playtime: "3:12")
        let v3 = Video(title: "[VLOG] 멍멍이의 일상: 배고픈데 어디 먹을 거 없나...?", thumbnailFileName: "image03", profileFileName: "image03", detailInfo: "태현티비 · 조회수 9.9천회 · 40분 전", playtime: "9:30")
        let v4 = Video(title: "알록달록 보고 있으면 마음이 안정되는 예쁜 식물들, 한 번 키워보지 않을래요?", thumbnailFileName: "image04", profileFileName: "image04", detailInfo: "태현티비 · 조회수 359회 · 10분 전", playtime: "11:15")
        let v5 = Video(title: "[오늘은 무엇을 들을까?] 어디론가 떠나고 싶을 때 듣기 좋은 노래", thumbnailFileName: "image05", profileFileName: "image05", detailInfo: "태현티비 · 조회수 130만회 · 3주 전", playtime: "1:20:38")
        let v6 = Video(title: "내가 다녀왔던 곳 중에서 가장 좋았던 여행지 (with Taekki) ", thumbnailFileName: "image06", profileFileName: "image06", detailInfo: "태현티비 · 조회수 7만회 · 3일 전", playtime: "30:22")
        let v7 = Video(title: "VLOG. 미국 여행 2박 3일 간의 기록! 미국 여행 코스, 미국 브이로그, 미국 날씨, 미국 맛집", thumbnailFileName: "image07", profileFileName: "image07", detailInfo: "태현티비 · 조회수 4.7천회 · 6일 전", playtime: "16:47")
        
        return [v1, v2, v3 ,v4, v5, v6, v7]
    }
}
