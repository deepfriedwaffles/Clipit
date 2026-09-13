//
//  ClipEngine.swift
//  clipit
//
//  Created by Vasili Dallas on 7/16/26.
//  Last modified on 9/13/26

import AVFoundation

func setupAudioSession() throws {
    let session = AVAudioSession.sharedInstance()
    try session.setCategory(.playAndRecord, mode: .default, options: [.defaultToSpeaker, .allowBluetoothHFP])
}

let audioEngine = AVAudioEngine()
func startListening(clipDurationInSecs: Int) {
    let inputNode = audioEngine.inputNode
    let format = inputNode.outputFormat(forBus: 0)
    let sampleRate = format.sampleRate //whatever it may be...
    
    //now i have to tap the mic
    inputNode.installTap(onBus: 0, bufferSize: 4096/*approx. 90ms*/, format: format) { buffer, time in
        appendBuffer(buffer, targetDurationSecs: clipDurationInSecs, sampleRate: sampleRate)
    }
    try? audioEngine.start()
}
func stopListening() {
    //get this later for mic toggle
}

// the rolling buffer
var bufferQueue: [AVAudioPCMBuffer] = []
var totalFrameCount: AVAudioFrameCount = 0
