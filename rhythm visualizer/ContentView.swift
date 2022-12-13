//
//  ContentView.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying: Bool = false;
    
    var body: some View {
        VStack{
            PlayButton(isPlaying: $isPlaying); //pass binding
            Track(isPlaying: $isPlaying);
        }

        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
