//
//  Animation.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import Foundation
import SwiftUI


/// アニメーション
var slideAnimation: Animation {
    Animation
        .spring(
            response: 1.5,
            dampingFraction: 0.5,
            blendDuration: 0.5)

        .speed(1)
        .delay(0.25)
}
