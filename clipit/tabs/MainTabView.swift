//
//  MainTabView.swift
//  clipit
//
//  Created by Vasili Dallas on 7/12/26.
//  Last modified on 7/16/26

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            // home tab
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            // library tab
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "waveform")
                }

            // settings tab
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}
