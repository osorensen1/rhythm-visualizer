//
//  TrackBG.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Track: View {
    var noteList : [CGFloat];
    
    var body: some View {
        ZStack{
            TrackBG();
            Barline();
            ForEach(noteList, id: \.self) { note in
                Note(xPos: note)
            }
        }
    }
}

struct Track_Previews: PreviewProvider {
    static var previews: some View {
        Track(noteList: []);
    }
}
