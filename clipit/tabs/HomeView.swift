//
//  HomeView.swift
//  clipit
//
//  Created by Vasili Dallas on 7/12/26.
//  Last modified on 7/16/26

import SwiftUI
import SwiftData

struct HomeView: View {
    @State private var microphoneOn = true
    var body: some View {
        VStack {
            //clip button
            if #available(iOS 26.0, *) {
                Button {
                    print("Clip!")
                } label: {
                    Image(systemName: "waveform")
                        .font(.system(size: 60))
                        .frame(width: 180, height: 180)
                }
                .buttonStyle(.glass)
                .clipShape(Circle())
            } else {
                // Fallback on earlier versions
                Button {
                    print("Clip!")
                } label: {
                    Image(systemName: "waveform")
                        .font(.system(size: 60))
                        .frame(width: 180, height: 180)
                }
                .clipShape(Circle())
                .buttonStyle(.automatic)
            }
            
            // mic on off button
            if #available(iOS 26.0, *) {
                Button {
                    microphoneOn.toggle()
                } label: {
                    HStack {
                        Image(systemName: microphoneOn ? "microphone.fill" : "microphone.slash.fill")
                        
                        Text(microphoneOn ? "Microphone On" : "Microphone Off")
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                }
                .buttonStyle(.glass)
                .clipShape(Capsule())
            } else {
                Button {
                    microphoneOn.toggle()
                } label: {
                    HStack {
                        Image(systemName: microphoneOn ? "microphone.fill" : "microphone.slash.fill")
                        
                        Text(microphoneOn ? "Microphone On" : "Microphone Off")
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                }
                .buttonStyle(.automatic)
                .clipShape(Capsule())
                // Fallback on earlier versions
            }
            /* Text("Home") .offset(y: -300) */
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
