//
//  AvocadosView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - プロパティー

    @State private var isAnimation: Bool = false

    // MARK: - ボディー
    var body: some View {
        VStack {
            Spacer()

            /// メインイメージ
            imageArea

            VStack {
                /// タイトル
                titleArea

                /// メッセージ
                messageArea
            }//: VStack
            .padding()

            Spacer()
        }// VStack
        .background(
            Image(.background)
                .resizable()
                .scaledToFill()

        )
        .edgesIgnoringSafeArea(.all)
        .onAppear{
            isAnimation.toggle()
        }
    }//:  ボディー

    // MARK: - メソッド
}


private extension AvocadosView {

    private var imageArea: some View {
        Image(.avocado)
            .resizable()
            .scaledToFit()
            .frame(width: 240, height: 240)
            .addShadow(color: .colorBlackTransparentDark, radius: 12, y: 8)
            .scaleEffect(isAnimation ? 1: 0.9)
            .opacity(isAnimation ? 1: 0.9)
            .animation(
                .easeIn(duration: 1.5)
                .repeatForever(autoreverses: true),
                value: isAnimation)
    }

    private var titleArea: some View {
        Text("Acocados".uppercased())
            .font(.system(size: 42, weight: .bold, design: .serif))
            .foregroundColor(.white)
        .addShadow(color: .colorBlackTransparentDark, radius: 4, y: 4)
    }

    private var messageArea: some View {
        Text("AvocadosMessage")
            .lineLimit(nil)
            .font(.system(.headline, design: .serif))
            .foregroundColor(.colorGreenLight)
            .multilineTextAlignment(.leading)
            .lineSpacing(9)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 120)
    }
}



#Preview {
    AvocadosView()
}

