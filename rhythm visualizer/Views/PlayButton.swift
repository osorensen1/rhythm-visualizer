//
//  PlayButton.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/12/22.
//

import SwiftUI
import AVFoundation.AVFAudio


struct PlayButton: View {
    @Binding var player: AVMIDIPlayer; //connected to isPlaying in ContentView
    
    var body: some View {
        Button(player.isPlaying ? "Pause" : "Play") {
            if (player.isPlaying) {
                player.stop();
                print("stopped");
            } else {
                player.prepareToPlay();
                player.play();
                print("playing");
            }
        }
        
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(player: .constant(AVMIDIPlayer()))
    }
}
