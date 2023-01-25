//
//  DemoApp.swift
//  Demo
//
//  Created by Duc Tran on 24/01/2023.
//

import SwiftUI

@main
struct DemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
            RestartContext()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
