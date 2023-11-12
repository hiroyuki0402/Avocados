//
//  DishesItemView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import SwiftUI

struct DishesItemView: View {
    var dishesItem: DishesItem
    var position: Position

    var body: some View {
        VStack {
            HStack {
                switch position {
                case .left:
                    icone
                    Spacer()
                    title
                case .right:
                    title
                    Spacer()
                    icone
                }
            }
        }
    }
}

private extension DishesItemView {
    private var icone: some View {
        Image(dishesItem.image)
            .resizable()
            .modifier(IconModifier())

    }

    private var title: some View {
        Text(dishesItem.title)
    }
}

#Preview {
    DishesItemView(dishesItem: .init(image: "icon-toasts", title: "Toasts"), position: .left)
}
