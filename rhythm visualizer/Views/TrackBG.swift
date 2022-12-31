//
//  TrackBG.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/12/22.
//

import SwiftUI

struct TrackBG: View {
    let HEIGHT:CGFloat = 100.0;
    
    var body: some View {
        Rectangle()
            .size(width: 800.0, height: HEIGHT)
    }
}

struct TrackBG_Previews: PreviewProvider {
    static var previews: some View {
        TrackBG()
    }
}
