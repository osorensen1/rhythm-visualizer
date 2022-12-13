//
//  TrackBG.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Track: View {
    //TODO ensure Track is properly receiving isPlaying value
    //if yes and still not working, debug animation()
    @Binding var isPlaying: Bool;
    
    
    var body: some View {
        ZStack{
            TrackBG()
            Barline()
            Note().animation(.easeIn)
        }

    }
}

struct Track_Previews: PreviewProvider {
    static var previews: some View {
        Track(isPlaying: .constant(false));
    }
}
