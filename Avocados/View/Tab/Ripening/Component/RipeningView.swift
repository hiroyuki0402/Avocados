//
//  RipeningView.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/12.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - プロパティー
    var ripeningData: RipeningData
    @State private var slideInAnimation: Bool = false
    // MARK: - ボディー

    var body: some View {
        VStack {
            /// アイコン
            icon

            VStack(alignment: .center, spacing: 10) {
                /// ステージ
                stage

                /// 説明
                Spacer()
                description
                Spacer()

                /// 成熟
                ripeness

                /// 命令
                instruction
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                addGradation(
                    colors: [.colorGreenLight, .colorGreenMedium],
                    startPoint: .top,
                    endPoint: .bottom))
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            slideInAnimation.toggle()
        }
    }
}

private extension RipeningView {
    // MARK: - Icon
    private var icon: some View {
        Image(ripeningData.image)
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .center)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .background(
                Circle()
                    .fill(.colorGreenLight)
                    .frame(width: 110, height: 110, alignment: .center)
            )
            .background(
                Circle()
                    .fill(.colorAppearanceAdaptive)
                    .frame(width: 120, height: 120, alignment: .center)
            )
            .zIndex(1)
            .animation(.easeInOut(duration: 1), value: slideInAnimation)
            .offset(y: slideInAnimation ? 55 : -55)
    }
    // MARK: - STAGE
    private var stage: some View {
        VStack(alignment: .center, spacing: 0) {
            Text(ripeningData.stage)
                .font(.system(.largeTitle, design: .serif))
                .fontWeight(.bold)

            Text("STAGE")
                .font(.system(.body, design: .serif))
                .fontWeight(.heavy)
        }
        .foregroundColor(.colorGreenMedium)
        .padding(.top, 65)
        .frame(width: 180)
    }

    // MARK: - Description

    private var description: some View {
        Text(ripeningData.description)
            .foregroundColor(.colorGreenDark)
            .fontWeight(.bold)
            .lineLimit(nil)
    }

    // MARK: - Ripeness

    private var ripeness: some View {
        Text(ripeningData.ripeness)
            .foregroundColor(.white)
            .font(.system(.callout, design: .serif))
            .fontWeight(.bold)
            .shadow(radius: 3)
            .padding(.vertical)
            .padding(.horizontal, 0)
            .frame(width: 185)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(LinearGradient(gradient: Gradient(colors: [.colorGreenMedium, .colorGreenDark]), startPoint: .top, endPoint: .bottom))
            )
            .addShadow(color: .colorBlackTransparentLight, radius: 6, y: 6)
    }

    // MARK: - Instruction

    private var instruction: some View {
        Text(ripeningData.instruction)
            .font(.footnote)
            .foregroundColor(.colorGreenLight)
            .fontWeight(.bold)
            .lineLimit(3)
            .frame(width: 160)
    }
}

#Preview {
    RipeningView(ripeningData: RipeningViewModel().getHeaderData(at: 0))
}
