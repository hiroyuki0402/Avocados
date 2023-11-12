//
//  RecipeCardItemView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import SwiftUI

struct RecipeCardItemView: View {
    // MARK: - プロパティー
    var recipeData: RecipeData

    

    // MARK: - ボディー
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {

            /// タイトル
            title

            /// ヘッダー見出し
            headline

            /// レーティング
            rating

            /// サービス
            service
        }
        .padding()
        .padding(.bottom, 12)
    }
}

private extension RecipeCardItemView {
    /// TITLE
    private var title: some View {
        Text(recipeData.title)
          .font(.system(.title, design: .serif))
          .fontWeight(.bold)
          .foregroundColor(.colorGreenMedium)
          .lineLimit(1)
    }

    /// HEADLINE
    private var headline: some View {
        Text(recipeData.headline)
          .font(.system(.body, design: .serif))
          .foregroundColor(.gray)
          .italic()
    }

    /// Rating
    private var rating: some View {
        HStack {
            ForEach(1...(recipeData.rating), id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(.yellow)
            }
        }
    }

    /// Service
    private var service: some View {
        HStack(alignment: .center, spacing: 12) {

            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Service: \(recipeData.serves)")
            }

            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipeData.preparation)")
            }

            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("cooking: \(recipeData.cooking)")
            }
        }
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

#Preview {
    RecipeCardItemView(recipeData: RecipeViewModel().getHeaderData(at: 0))
}
