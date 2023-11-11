//
//  TitleModiFier.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import Foundation
import SwiftUI

struct TitleModiFier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundColor(.colorGreenAdaptive)
            .padding(8)
    }
}
