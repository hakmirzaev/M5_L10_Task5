//
//  M5_L10_Task5App.swift
//  M5_L10_Task5
//
//  Created by Bekhruz Hakmirzaev on 30/11/22.
//

import SwiftUI

@main
struct M5_L10_Task5App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
