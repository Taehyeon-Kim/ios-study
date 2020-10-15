//
//  Food.swift
//  TableView01
//
//  Created by taehy.k on 2020/10/15.
//

import Foundation

struct Food {
    let foodName: String
    let foodFileName: String
    let thumbnailFileName: String
    
    static func getFoods() -> [Food] {
        let food1 = Food(foodName: "Mango", foodFileName: "food01", thumbnailFileName: "food01")
        let food2 = Food(foodName: "Salad", foodFileName: "food02", thumbnailFileName: "food02")
        let food3 = Food(foodName: "Pasta", foodFileName: "food03", thumbnailFileName: "food03")
        let food4 = Food(foodName: "Steak", foodFileName: "food04", thumbnailFileName: "food04")
        let food5 = Food(foodName: "Strawberry", foodFileName: "food05", thumbnailFileName: "food05")
        
        return [food1, food2, food3, food4, food5]
    }
}
