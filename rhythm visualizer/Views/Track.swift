//
//  TrackBG.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Track: View {
    let HEIGHT:CGFloat = 100.0;
    var noteList : [NoteParameters];
    var barlineList : [CGFloat];
    var trackLength: CGFloat;
    
    var body: some View {
        ZStack {
            TrackBG(trackLength: trackLength);
            ForEach(barlineList, id: \.self) { barline in
                Barline()
                    .offset(x: barline)
            };
            ForEach(noteList, id: \.self) { note in
                Note(radius: note.radius)
                    .offset(x: note.xPos, y: note.yPos)
            };
        }.frame(width: 1200, height: HEIGHT)
    }
}

struct Track_Previews: PreviewProvider {
    static var previews: some View {
        Track(noteList: [NoteParameters(xPos: 100)], barlineList: [100.0, 200.0, 300.0, 400.0], trackLength: 500);
    }
}
