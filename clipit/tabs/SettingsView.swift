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
        NavigationStack {
            VStack {
                Form { // https://developer.apple.com/documentation/swiftui/form documentation i need!!
                    Section(/* header: Text("Settings") */) {
                        Picker("Clip Duration", selection: $clipDurationInSecs) {
                            Text("15 Seconds").tag(15)
                            Text("30 Seconds").tag(30)
                            Text("60 Seconds").tag(60)
                            Text("120 Seconds").tag(120) }
                        
                        .onChange(of: clipDurationInSecs) { _, newValue in
                            print("new clip duration is " + String(clipDurationInSecs))
                            
                            /*IDEAS FOR MORE SETTINGS
                             audio quality, clear recently deleted after time, stereo recording, audio quality compressed or lossless
                             
                             definitey need a donate button */
                        }
                    }
                }
                Text("Made with ❤️ by Vasili Dallas.\n[Source Code on GitHub](https://github.com/deepfriedwaffles/Clipit)")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 20)
            }
            .navigationTitle("Settings")
        }
    } //var body
} //struct

#Preview {
    SettingsView();
}
