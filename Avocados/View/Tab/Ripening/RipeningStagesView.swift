//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - プロパティー
    @StateObject private var repeningViewmodel = RipeningViewModel()
    // MARK: - ボディー

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                ripeningStages
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        }//: ボディー
    }
}

private extension RipeningStagesView {
    private var ripeningStages: some View {
        HStack(alignment: .center, spacing: 20) {
            ForEach(repeningViewmodel.ripeningDatas) { data in
                RipeningView(ripeningData: data)
            }
        }
        .padding(.vertical)
        .padding(.horizontal, 25)
    }
}

#Preview {
    RipeningStagesView()
}
