//
//  DishesView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import SwiftUI

struct DishesView: View {
    // MARK: - プロパティー

    // MARK: - ボディー

    var body: some View {
        HStack {
            /// 左の列に表示するアイテム
            leftItem

            /// 真ん中のアイコン
            midleIcon

            /// 右側に表示するアイテム
            rightItem

        }//: HStack
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)

    }//: ボディー

    // MARK: - メソッド

}
private extension DishesView {

    /// 左の列に表示するアイテム
    private var leftItem: some View {
        VStack(alignment: .leading, spacing: 4) {
            ForEach(DishesTestItem(.left).indices, id: \.self) { index in
                let item = DishesTestItem(.left)[index]
                DishesItemView(dishesItem: item, position: .left)

                /// 最後は区切り線は付けない
                if item.id != DishesTestItem(.left).last?.id {
                    Divider()
                }
            }
        }
    }

    /// 真ん中のアイコン
    private var midleIcon: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack {
                Divider()
            }
            Image(systemName: "heart.circle")
                .fontWeight(.ultraLight)
                .imageScale(.large)
            HStack {
                Divider()
            }
        }
    }

    /// 右側に表示するアイテム
    private var rightItem: some View {
        VStack(alignment: .trailing, spacing: 4) {
            ForEach(DishesTestItem(.right).indices, id: \.self) { index in
                let item = DishesTestItem(.right)[index]
                DishesItemView(dishesItem: item, position: .right)

                /// 最後は区切り線は付けない
                if item.id != DishesTestItem(.right).last?.id {
                    Divider()
                }
            }
        }
    }
}

#Preview {
    DishesView()
}
