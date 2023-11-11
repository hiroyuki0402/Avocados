//
//  FactData.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import Foundation

struct FactData: Codable, Identifiable {
  var id = UUID()
  var image: String
  var content: String
}

typealias FactDatas = [FactData]
