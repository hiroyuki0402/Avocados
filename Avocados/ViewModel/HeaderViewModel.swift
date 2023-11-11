//
//  HeaderViewModel.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import Foundation

class HeaderViewModel: ObservableObject {
    // MARK: - プロパティー
    @Published var headerDatas: HeaderDatas = []

    // MARK: - 初期化

    init() {
        loadData()
    }

    // MARK: - メソッド

    /// データのロード
    private func loadData() {
        self.headerDatas = HeaderTestDatas()
    }

    /// データの取得
    /// - Parameter index: 取得対象
    /// - Returns: 指定したヘッダーのデータ
    func getHeaderData(at index: Int) -> HeaderData {
        return headerDatas[index]
    }

}
