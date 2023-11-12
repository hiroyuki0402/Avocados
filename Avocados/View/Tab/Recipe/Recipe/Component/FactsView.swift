//
//  FactsView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import SwiftUI

struct FactsView: View {
    // MARK: - プロパティー
    var factData: FactData

    /// サイズ
    private let descripsionLabelWidth: CGFloat = 300
    private let descripsionLabelHeight: CGFloat = 135
    private let iconWidth: CGFloat = 66
    private let iconHeight: CGFloat = 66

    // MARK: - ボディー

    var body: some View {
        ZStack {

            /// 説明文
            descripsion

            /// アイコン
            icon

        }
    }//: ボディー
}

private extension FactsView {
    /// 説明文
    private var descripsion: some View {
        Text(factData.content)
            .padding(.leading, 45)
            .padding(.trailing, 10)
            .padding(.vertical, 3)
            .frame(
                width: descripsionLabelWidth,
                height: descripsionLabelHeight,
                alignment: .center)

            .background(
                addGradation(
                    colors: [.colorGreenMedium, .colorGreenLight],
                    startPoint: .leading,
                    endPoint: .trailing))

            .cornerRadius(12)
            .lineLimit(6)
            .multilineTextAlignment(.leading)
            .font(.footnote)
            .foregroundColor(Color.white)
    }

    /// アイコン
    private var icon: some View {
        Image(factData.image)
            .resizable()
            .frame(width: iconWidth, height: iconHeight, alignment: .center)
            .clipShape(Circle())
            .background(
                Circle()
                    .fill(.white)
                    .frame(width: 74, height: 74)
            )

            /// 真ん中の円
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient:
                                Gradient(
                                    colors:
                                        [.colorGreenMedium, .colorGreenLight]),
                            startPoint: .leading,
                            endPoint: .trailing))
                    .frame(width: 82, height: 82)
            )

            /// 外側の円
            .background(
                Circle()
                    .fill(.colorAppearanceAdaptive)
                    .frame(width: 90, height: 90, alignment: .center)
            )

            .offset(x: -descripsionLabelWidth / 2)
    }
}

#Preview {
    FactsView(factData: FactsViewModel().getFactData(at: 0))
}

/*

 */
