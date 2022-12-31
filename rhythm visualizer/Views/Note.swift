//
//  Note.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Note: View {
    let RADIUS:CGFloat = 50.0;
    
    var body: some View {
        Circle()
            .size(CGSize(width: RADIUS, height: RADIUS))
            .offset (x: -RADIUS/2, y: -RADIUS/2); //circle's center is used for positioning
    }
}

struct Note_Previews: PreviewProvider {
    static var previews: some View {
        Note()
    }
}
