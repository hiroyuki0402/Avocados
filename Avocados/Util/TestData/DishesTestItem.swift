//
//  DishesTestItem.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import Foundation
import SwiftUI

enum Position {
    case left
    case right
}

struct DishesItem: Identifiable {
    var id = UUID()
    let image: String
    let title: String
}

typealias DishesItems = [DishesItem]


let leftItem: [DishesItem] = [
    .init(image: "icon-toasts", title: "Toasts"),
    .init(image: "icon-tacos", title: "Tacos"),
    .init(image: "icon-salads", title: "Salads"),
    .init(image: "icon-halfavo", title: "Spreads")
]

let rightItem: [DishesItem] = [
    .init(image: "icon-guacamole", title: "Guacamole"),
    .init(image: "icon-sandwiches", title: "Sandwich"),
    .init(image: "icon-soup", title: "Soup"),
    .init(image: "icon-smoothies", title: "Smoothie")
]


func DishesTestItem(_ position: Position) -> DishesItems {
    if position == .left {
        return leftItem
    } else {
        return rightItem
    }
}
