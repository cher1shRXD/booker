//
//  bookerApp.swift
//  booker
//
//  Created by dgsw13 on 2/23/25.
//

import SwiftUI

@main
struct bookerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
