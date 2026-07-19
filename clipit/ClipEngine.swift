//
//  AudioEngine.swift
//  clipit
//
//  Created by Vasili Dallas on 7/16/26.
//

import AVFoundation

struct ClipEngine {
    let audioFile = AVAudioFile
    let audioEngine = AVAudioEngine()
    let playerNode = AVAudioPlayerNode()
    
    
    // Attach the player node to the audio engine.
    audioEngine.attach(playerNode)
    
    
    // Connect the player node to the output node.
    audioEngine.connect(playerNode,
                        to: audioEngine.outputNode,
                        format: audioFile.processingFormat)
}

