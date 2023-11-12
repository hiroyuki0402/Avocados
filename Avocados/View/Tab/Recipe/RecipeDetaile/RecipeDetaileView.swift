//
//  RecipeDetaileView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import SwiftUI

struct RecipeDetaileView: View {
    // MARK: - プロパティー
    var recipeData: RecipeData
    @State private var isPulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    // MARK: - ボディー

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {

            /// メインイメージ
            image

            Group {
                /// レシピーサービス
                RecipeCardItemView(recipeData: recipeData)

                /// 材料
                ingredientsTitle
                ingredients

                /// 説明
                instructionsTitle
                instructions
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 0)
        }
        .edgesIgnoringSafeArea(.all)
        .overlay {
            HStack {
                Spacer()
                /// 閉じるボタン
                dismisButton
            }
        }
        .onAppear {
            isPulsate.toggle()
        }
    }//: ボディー
}

private extension RecipeDetaileView {
    // MARK: - MainImage

    private var image: some View {
        VStack {
            Image(recipeData.image)
                .resizable()
                .scaledToFit()
        }
    }

    // MARK: - Igredients

    private var ingredientsTitle: some View {
        Text("Ingredients")
            .fontWeight(.bold)
            .modifier(TitleModiFier())
    }

    private var ingredients: some View {
        VStack(alignment: .leading, spacing: 5) {
            ForEach(recipeData.ingredients, id: \.self) { item in
                VStack(alignment: .leading, spacing: 5) {
                    Text(item)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Divider()
                }
            }
        }
    }

    // MARK: - Instructions

    private var instructionsTitle: some View {
        Text("Instructions")
            .fontWeight(.bold)
            .modifier(TitleModiFier())
    }

    private var instructions: some View {
        ForEach(recipeData.instructions, id: \.self) { item in
            VStack(alignment: .center, spacing: 5) {
                Image(systemName: "chevron.down.circle")
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
                    .imageScale(.large)
                    .font(Font.title.weight(.ultraLight))
                    .foregroundColor(.colorGreenAdaptive)

                Text(item)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .font(.system(.body, design: .serif))
                    .frame(minHeight: 100)
            }
        }
    }

    // MARK: - DismisButton
    
    private var dismisButton: some View {
        VStack {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.down.circle.fill")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .shadow(radius: 4)
                    .opacity(self.isPulsate ? 1 : 0.6)
                    .scaleEffect(self.isPulsate ? 1.2 : 0.8, anchor: .center)
                    .animation(.easeOut(duration: 1.5).repeatForever(autoreverses: true), value: isPulsate)
            }
            .padding(.trailing, 20)
            .padding(.top, 24)
            Spacer()
        }
    }

}

#Preview {
    RecipeDetaileView(recipeData: RecipeViewModel().getHeaderData(at: 0))
}
