//
//  RecipeCardView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - プロパティー
    var recipeData: RecipeData
    @State private var isShowModal: Bool = false

    // MARK: - ボディー

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            /// メイン画像
            mainImage

            /// レシピアイテム
            RecipeCardItemView(recipeData: recipeData)
        }
        .background(.white)
        .cornerRadius(12)
        .addShadow(color: .colorBlackTransparentLight, radius: 8)
        .onTapGesture {
            isShowModal = true
        }
        .sheet(isPresented: $isShowModal, content: {
            RecipeDetaileView(recipeData: recipeData)
        })
    }
}

private extension RecipeCardView {

    private var mainImage: some View {
        /// メイン画像
        Image(recipeData.image)
            .resizable()
            .scaledToFit()
            .overlay(
                HStack {
                    Spacer()
                    VStack {
                        /// ブックマークアイコン
                        Image(systemName: "bookmark")
                            .font(.title.weight(.light))
                            .foregroundColor(.white)
                            .imageScale(.small)
                            .addShadow(color: .colorBlackTransparentLight, radius: 2)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                        Spacer()
                    }
                }
            )
    }
}

#Preview {
    RecipeCardView(recipeData: RecipeViewModel().getHeaderData(at: 0))
}
