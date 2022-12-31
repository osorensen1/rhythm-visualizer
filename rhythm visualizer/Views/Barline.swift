//
//  Barline.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Barline: View {
    let WIDTH:CGFloat = 20;
    let HEIGHT:CGFloat = 100;
    
    
    var body: some View {
        Rectangle()
            .size(width: WIDTH, height: HEIGHT)
            .offset(x: -WIDTH/2) //center used for positioning
            .fill(Color.black);
    }
}

struct Barline_Previews: PreviewProvider {
    static var previews: some View {
        Barline()
    }
}
