//
//  MainTabView.swift
//  clipit
//
//  Created by Vasili Dallas on 7/12/26.
//  Last modified on 7/13/26

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "tray.and.arrow.down.fill") {
                HomeView()
            }
            .badge(2)

            Tab("Library", systemImage: "tray.and.arrow.up.fill") {
                LibraryView()
            }

            Tab("Settings", systemImage: "person.crop.circle.fill") {
                SettingsView()
            }
            .badge("!")
        }
    }
}
