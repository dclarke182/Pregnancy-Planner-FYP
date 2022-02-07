//
//  FYPNewApp.swift
//  FYPNew
//
//  Created by Daniel Clarke on 07/02/2022.
//

import SwiftUI

@main
struct FYPNewApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
