//
//  HeaderView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - プロパティー

    /// ヘッダーのタイトルを表示するフラグ
    @State private var iShowHeaderLine: Bool = false

    /// ヘッダーに関するデータ
    var headerData: HeaderData

    // MARK: - ボディー
    var body: some View {
        ZStack {
            backGroundImage

            HStack(alignment: .top, spacing: 0) {

                Rectangle()
                    .fill(.colorGreenLight)
                    .frame(width: 4)


                VStack(alignment: .leading, spacing: 0) {
                    titleArea

                    messegaArea
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 280, height: 105)
                .background(.colorBlackTransparentLight)
            }
            .frame(width: 280, height: 105, alignment: .center)
            .offset(x: -60, y: iShowHeaderLine ? 75: 220)
            .animation(slideAnimation, value: iShowHeaderLine)
            .onAppear {
                iShowHeaderLine.toggle()
            }

        }//: ZStack
        .frame(width: 480, height: 320)
    }//: ボディー

    // MARK: - メソッド
}

private extension HeaderView {

    private var backGroundImage: some View {
        Image(headerData.image)
            .resizable()
            .scaledToFill()

    }

    private var titleArea: some View {
        Text(headerData.headline)
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .addShadow(radius: 3)
    }

    private var messegaArea: some View {
        Text(headerData.subheadline)
            .font(.footnote)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.white)
            .shadow(radius: 3)
    }

}

#Preview {
    HeaderView(headerData: HeaderViewModel().getHeaderData(at: 0))
        .frame(width: 480, height: 320)
        .previewLayout(.sizeThatFits)
}
