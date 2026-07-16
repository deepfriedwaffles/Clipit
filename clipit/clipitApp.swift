//
//  clipitApp.swift
//  clipit
//
//  Created by Vasili Dallas on 7/12/26.
//  Last modified on 7/16/26

import SwiftUI
import SwiftData

@main
struct clipitApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([ ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
        .modelContainer(sharedModelContainer)
    }
}
