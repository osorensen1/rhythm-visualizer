//
//  TrackBG.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Track: View {
    let HEIGHT:CGFloat = 100.0;
    var noteList : [CGFloat];
    var barlineList : [CGFloat];
    
    var body: some View {
        ZStack (alignment: .bottom){
            TrackBG();
            ForEach(barlineList, id: \.self) { barline in
                Barline()
                    .offset(x: barline)
            };
            ForEach(noteList, id: \.self) { note in
                Note()
                    .offset(x: note)
                    
                    
            };
        }.frame(width: 1200, height: HEIGHT, alignment: .bottom)
    }
}

struct Track_Previews: PreviewProvider {
    static var previews: some View {
        Track(noteList: [200.0, 400.0], barlineList: [100.0, 200.0, 300.0, 400.0]);
    }
}
