//
//  PlayButton.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/12/22.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool; //connected to isPlaying in ContentView
    
    var body: some View {
        Button(isPlaying ? "Pause" : "Play") {
            isPlaying.toggle();
        }
        
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(isPlaying: .constant(false))
    }
}
