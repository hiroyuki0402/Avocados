//
//  View-Extension.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import Foundation
import SwiftUI

extension View {

    func addShadow(color: Color = Color(.sRGBLinear, white: 0, opacity: 0.33), radius: CGFloat = 10, x: CGFloat = 0, y: CGFloat = 0) -> some View {
        return shadow(color: color, radius: radius, x: x, y: y)
    }

    func addGradation(colors: [Color], startPoint: UnitPoint, endPoint: UnitPoint) -> some View {
        return LinearGradient(colors: colors, startPoint: startPoint, endPoint: endPoint)
    }
}


