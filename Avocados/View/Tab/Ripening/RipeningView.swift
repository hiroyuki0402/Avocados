//
//  RipeningView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - プロパティー

    /// ヘッダーのViewModel
    @StateObject private var headerViewModel = HeaderViewModel()

    /// アボカドの事実のViewModel
    @StateObject private var factsViewModel = FactsViewModel()

    // MARK: - ボディー
    var body: some View {

        ScrollView(.vertical, showsIndicators: false) {
            ///  VStack
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                /// ヘッダー
                header

                /// 料理
                dishesTitle
                dishes

                /// 事実
                factsTitle
                facts

                /// フッター
                footerItems
                .padding()
                .frame(maxWidth: 640)
                .padding(.bottom, 85)

            }//: VStack

        }//: ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }//: ボディー

    // MARK: - メソッド


}


private extension RipeningView {

    // MARK: - Header

    private var header: some View {
        /// ヘッダー
        ScrollView(.horizontal, showsIndicators: false) {
            /// HStack 0
            HStack(alignment: .top, spacing: 0) {
                ForEach(headerViewModel.headerDatas) { item in
                    HeaderView(headerData: item)
                }
            }//: HStack 0
        }
    }

    // MARK: - Dishes

    private var dishesTitle: some View {
        Text("Avocado Dishes")
          .fontWeight(.bold)
          .modifier(TitleModiFier())
    }

    private var dishes: some View {
        DishesView()
            .frame(maxWidth: 640)
    }


    // MARK: - Facts

    private var factsTitle: some View {
        Text("Avocado Facts")
          .fontWeight(.bold)
          .modifier(TitleModiFier())
    }

    private var facts: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 50) {
                ForEach(factsViewModel.factDatas) { data in
                    FactsView(factData: data)
                }
            }
            .padding(.leading, 60)
            .padding(.trailing, 20)
        }

    }


    // MARK: - Footer

    private var footerItems: some View {
        /// VStack 1
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
            footerTitle
            footerDescripSion
        }//: VStack
    }

    private var footerTitle: some View {
        Text("All About Avocados")
            .modifier(TitleModiFier())
    }

    private var footerDescripSion: some View {
        Text("Everything you wanted to know about avocados but were too afraid to ask.")
          .font(.system(.body, design: .serif))
          .multilineTextAlignment(.center)
          .foregroundColor(Color.gray)
          .frame(minHeight: 60)
    }

}

#Preview {
    RipeningView()
}
