//
//  ContentView.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect();
    @State private var xVal : Double = 0;
    @ObservedObject var midiController = MidiController.init();
    var trackBuilder = TrackBuilder();

    
    var body: some View {
        VStack{
            PlayButton(player : $midiController.player);
            trackBuilder.build(midiURL : midiController.midiURL)
                .frame(width: 1000, height: 500, alignment: .leading)
                .offset(x: CGFloat(xVal))
                .onReceive(timer, perform: { _ in
                    if (midiController.player.isPlaying) {
                        xVal -= (trackBuilder.tempo * trackBuilder.BEAT_LENGTH * 0.05) / 60; //TODO var for TIMER_INTERVAL
                    }
                }); //control horizontal movement
        }
        
        
    }
    
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
