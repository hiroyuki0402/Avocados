//
//  SettingView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/11.
//

import SwiftUI

struct SettingView: View {
    // MARK: - プロパティー
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false

    // MARK: - ボディー

    var body: some View {
        VStack(alignment: .center, spacing: 0) {

            /// ヘッダー
            headerTitle


            Form {
                /// General Settings
                generalSettings

                /// Application
                applicationSettings
            }
        }
        .frame(maxWidth: 640)
    }
}

private extension SettingView {
    // MARK: - ヘッダータイトル
    private var headerTitle: some View {
        VStack(alignment: .center, spacing: 5) {
            Image(.avocado)
                .resizable()
                .scaledToFit()
                .padding(.top)
                .frame(width: 100, height: 100, alignment: .center)
                .addShadow(color: .colorBlackTransparentLight, radius: 8, y: 4)

            Text("Avocado".uppercased())
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
            .foregroundColor(.colorGreenAdaptive)
        }
        .padding()
    }

    // MARK: - フォーム

    /// General Settings
    private var generalSettings: some View {
        Section(header: Text("一般")) {
            Toggle(isOn: $enableNotification) {
                Text("プッシュ通知")
            }

            Toggle(isOn: $backgroundRefresh) {
                Text("バックグラウンド更新")
            }
        }
    }

    /// Application
    private var applicationSettings: some View {
        Section(header: Text("Application")) {
            if enableNotification {
                HStack {
                    Text("Product")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Avocado Recipes")
                }
                HStack {
                    Text("互換性")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("iPhone & iPad")
                }
                HStack {
                    Text("Developer")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Hiroyuki / Shiraishi")
                }
                HStack {
                    Text("デザイナー")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Robert Petras")
                }
                HStack {
                    Text("Website")
                        .foregroundColor(.gray)
                    Spacer()
                    if let url = URL(string: "https://github.com/hiroyuki0402") {
                        Link(destination: url, label: {
                            Text("Git Hub")
                                .foregroundColor(.teal)
                                .underline()
                        })
                    }

                }
                HStack {
                    Text("Version")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("1.0.0")
                }
            } else {
                HStack {
                  Text("Personal message")
                        .foregroundColor(.gray)
                  Spacer()
                  Text("👍 Happy Coding!")
                }
            }
        }
    }
}

#Preview {
    SettingView()
}
