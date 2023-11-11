//
//  HeaderData.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import Foundation

struct HeaderData: Codable, Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}

typealias HeaderDatas = [HeaderData]
