//
//  ContentView.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying: Bool = false;
    @State private var timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect();
    @State private var xVal = 0;
    @State private var midiUrl = "filepath";
    
    var body: some View {
        VStack{
            PlayButton(isPlaying: $isPlaying); //pass binding
            Track(isPlaying: $isPlaying)
                .offset(x: CGFloat(xVal))
                .onReceive(timer, perform: { _ in
                    if (isPlaying) {
                        xVal -= 2;
                    }
                });
        }

        
    }
    
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
