//
//  RecipeViewModel.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import Foundation

class RecipeViewModel: ObservableObject {
    // MARK: - プロパティー
    @Published var recipeDatas: RecipeDatas = []

    // MARK: - 初期化

    init() {
        loadData()
    }

    // MARK: - メソッド

    /// データのロード
    private func loadData() {
        self.recipeDatas = RecipeTestData()
    }

    /// データの取得
    /// - Parameter index: 取得対象
    /// - Returns: 指定したヘッダーのデータ
    func getHeaderData(at index: Int) -> RecipeData {
        return recipeDatas[index]
    }

}
