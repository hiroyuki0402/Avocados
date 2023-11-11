//
//  IconModifier.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import Foundation
import SwiftUI

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}
