//
//  RipeningViewModel.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import Foundation

class RipeningViewModel: ObservableObject {
    // MARK: - プロパティー
    @Published var ripeningDatas: RipeningDatas = []

    // MARK: - 初期化

    init() {
        loadData()
    }

    // MARK: - メソッド

    /// データのロード
    private func loadData() {
        self.ripeningDatas = RipeningTestData()
    }

    /// データの取得
    /// - Parameter index: 取得対象
    /// - Returns: 指定したヘッダーのデータ
    func getHeaderData(at index: Int) -> RipeningData {
        return ripeningDatas[index]
    }

}
