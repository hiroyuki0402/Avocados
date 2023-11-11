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
    // MARK: - ボディー

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipeData.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
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

            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipeData.title)
                  .font(.system(.title, design: .serif))
                  .fontWeight(.bold)
                  .foregroundColor(.colorGreenMedium)
                  .lineLimit(1)

                // HEADLINE
                Text(recipeData.headline)
                  .font(.system(.body, design: .serif))
                  .foregroundColor(.gray)
                  .italic()
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .addShadow(color: .colorBlackTransparentLight, radius: 8)
    }
}

#Preview {
    RecipeCardView(recipeData: RecipeViewModel().getHeaderData(at: 0))
}
