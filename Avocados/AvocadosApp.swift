//
//  AvocadosApp.swift
//  Avocados
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/06.
//

import SwiftUI

@main
struct AvocadosApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
