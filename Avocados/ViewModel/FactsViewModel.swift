//
//  FactsViewModel.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import Foundation

class FactsViewModel: ObservableObject {
    // MARK: - プロパティー
    @Published var factDatas: FactDatas = []

    // MARK: - 初期化

    init() {
        loadData()
    }

    // MARK: - メソッド

    /// データのロード
    private func loadData() {
        self.factDatas = FactTestDatas()
    }

    /// データの取得
    /// - Parameter index: 取得対象
    /// - Returns: 指定したヘッダーのデータ
    func getFactData(at index: Int) -> FactData {
        return factDatas[index]
    }

}
