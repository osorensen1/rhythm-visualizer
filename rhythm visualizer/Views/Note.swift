//
//  Note.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Note: View {
    var radius: CGFloat ;
    
    var body: some View {
        Circle()
            .size(CGSize(width: radius, height: radius))
            .offset (x: -radius/2, y: -radius/2); //circle's center is used for positioning
    }
}

struct Note_Previews: PreviewProvider {
    static var previews: some View {
        Note(radius: 50)
    }
}
