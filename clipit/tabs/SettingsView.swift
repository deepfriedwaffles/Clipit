//
//  SettingsView.swift
//  clipit
//
//  Created by Vasili Dallas on 7/12/26.
//  Last modified on 7/18/26

import SwiftUI

struct SettingsView: View {
    
    // this is for clip duration setting, default value is 30 seconds, cant be on top level for some reason
    @State public var clipDurationInSecs = 30
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Settings")) {
                    // https://developer.apple.com/documentation/swiftui/form documentation i need!!
                    Picker("Clip Duration", selection: $clipDurationInSecs) {
                        Text("15 Seconds").tag(15)
                        Text("30 Seconds").tag(30)
                        Text("60 Seconds").tag(60)
                        Text("120 Seconds").tag(120)
                    } //picker
                    .onChange(of: clipDurationInSecs) { _, newValue in
                        print("new clip duration is " + String(clipDurationInSecs))
                        // add stuff here when audio engine is done
                    }
                } //section
            } //form
        } //navigation view
    } //var body
} //struct
