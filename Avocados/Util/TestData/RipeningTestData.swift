//
//  RipeningTestData.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import Foundation


func RipeningTestData() -> RipeningDatas {
    return [
        RipeningData(
          image: "avocado-ripening-1",
          stage: "1",
          title: "Hard",
          description: "木から摘みたてで、アボカドはとても固く、まったく柔らかくない。",
          ripeness: "5+ Days",
          instruction: "アボカドが完全に熟するまで常温で保管してください。"
        ),
        RipeningData(
          image: "avocado-ripening-2",
          stage: "2",
          title: "Conditioned",
          description: "熟成が始まっていますが、アボカドはまだとても固いです。",
          ripeness: "4-5 Days",
          instruction: "アボカドが完全に熟するまで常温で保管してください。"
        ),
        RipeningData(
          image: "avocado-ripening-3",
          stage: "3",
          title: "Breaking",
          description: "熟成が進むと、アボカドは固いが少し圧力に応じて柔らかくなります。",
          ripeness: "2 Days",
          instruction: "アボカドが完全に熟するまで常温で保管してください。"
        ),
        RipeningData(
          image: "avocado-ripening-4",
          stage: "4",
          title: "Ripe",
          description: "アボカドは熟しており、やさしい圧力に少し応じて柔らかくなります。",
          ripeness: "Firm-Ripe",
          instruction: "アボカドは薄切りや厚切り、小さな角切りに最適です。"
        ),
        RipeningData(
          image: "avocado-ripening-5",
          stage: "5",
          title: "Ripe",
          description: "アボカドは熟しており、やさしい圧力に簡単に応じて柔らかくなります。",
          ripeness: "Ripe",
          instruction: "アボカドはマッシュやスムージーにも最適です。"
        )
    ]

}
