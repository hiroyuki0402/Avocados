//
//  MainTabView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import SwiftUI

struct MainTabView: View {

    // MARK: - プロパティー
    // MARK: - ボディー
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image(.tabiconBranch)
                    Text("Acocados")
                }

            RecipeView()
                .tabItem {
                    Image(.tabiconBook)
                    Text("Recipe")
                }

            RipeningStagesView()
                .tabItem {
                    Image(.tabiconAvocado)
                    Text("Ripening")
                }

            SettingView()
                .tabItem {
                    Image(.tabiconSettings)
                    Text("Setting")
                }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
    // MARK: - メソッド


}

#Preview {
    MainTabView()
}
