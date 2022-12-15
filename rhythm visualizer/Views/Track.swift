//
//  TrackBG.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Track: View {

    
    var body: some View {
        ZStack{
            TrackBG()
            Barline()
            Note()
        }
    }
}

struct Track_Previews: PreviewProvider {
    static var previews: some View {
        Track();
    }
}
