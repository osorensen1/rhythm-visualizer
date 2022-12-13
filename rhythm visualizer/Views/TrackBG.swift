//
//  TrackBG.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/12/22.
//

import SwiftUI

struct TrackBG: View {
    var body: some View {
        Rectangle()
            .size(width: 800.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            .offset(x: 0, y: 150.0)
    }
}

struct TrackBG_Previews: PreviewProvider {
    static var previews: some View {
        TrackBG()
    }
}
