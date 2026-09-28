//
//  ClipEngine.swift
//  clipit
//
//  Created by Vasili Dallas on 7/16/26.
//  Last modified on 9/28/26

import AVFoundation

func setupAudioSession() {
    do {
        let session = AVAudioSession.sharedInstance()
        try session.setCategory(.playAndRecord, options: [.defaultToSpeaker, /*.allowBluetoothHFP*/])
        // removed bt
        try session.setActive(true)
    } catch {
        fatalError("Failed to configure and activate session.")
    }
}
//https://developer.apple.com/documentation/AVFAudio/capturing-stereo-audio-from-built-in-microphones

let audioEngine = AVAudioEngine()
func startListening(clipDurationInSecs: Int) { // this comes from SettingsView
    let inputNode = audioEngine.inputNode
    let format = inputNode.outputFormat(forBus: 0)
    let sampleRate = format.sampleRate //whatever it may be...

    //now i have to tap the mic
/*    inputNode.installTap(onBus: 0, bufferSize: 4096/*approx. 90ms*/, format: format) { }//ADD
    try? audioEngine.start()            */
}

private func enableBuiltInMic() {
    // Get the shared audio session.
    let session = AVAudioSession.sharedInstance()
    
    // Find the built-in microphone input.
    guard let availableInputs = session.availableInputs,
          let builtInMicInput = availableInputs.first(where: { $0.portType == .builtInMic }) else {
        print("WHERE IS THE MICROPHONE???")
        return
    }
    
    // Make the built-in microphone input the preferred input.
    do {
        try session.setPreferredInput(builtInMicInput)
    } catch {
        print("cannot set the built-in mic as the preferred input.")
    }
    
    func stopListening() {
        //get this later for mic toggle
    }
    
    // the rolling buffer
    var bufferQueue: [AVAudioPCMBuffer] = []
    var totalFrameCount: AVAudioFrameCount = 0
}
