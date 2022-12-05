//
//  FYPNewApp.swift
//  FYPNew
//
//  Created by Daniel Clarke on 07/02/2022.
//

//
//  AppApp.swift
//  App
//
//  Created by Daniel Clarke on 07/02/2022.
//

import SwiftUI
import Firebase

@main
struct FYPNewApp: App {
    let persistenceController = PersistenceController.shared
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let viewModel = AppViewModel()
            ContentView()
            //.environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(viewModel)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        
        
        return true
    }
}
