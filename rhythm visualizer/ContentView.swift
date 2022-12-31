//
//  ContentView.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    //@State private var isPlaying: Bool = false;
    @State private var timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect();
    @State private var xVal = 0;
    @ObservedObject var midiController = MidiController.init();
    var trackBuilder = TrackBuilder.init(midiUrl: URL(fileURLWithPath: "/Applications/Synthesia.app/Contents/Resources/beat44_clap.mid"));
    
    
    
    
    var body: some View {
        VStack{
            PlayButton(player : $midiController.player);
            trackBuilder.build()
                .frame(width: 1000, height: 500, alignment: .leading)
                .offset(x: CGFloat(xVal))
                .onReceive(timer, perform: { _ in
                    if (midiController.player.isPlaying) {
                        xVal -= 2;
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
