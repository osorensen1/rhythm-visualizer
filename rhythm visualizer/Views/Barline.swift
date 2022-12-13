//
//  Barline.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Barline: View {
    var body: some View {
        Rectangle()
            .size(width: 50, height: 100)
            .offset(x:0, y: 150.0)
            .fill(Color.black);
    }
}

struct Barline_Previews: PreviewProvider {
    static var previews: some View {
        Barline()
    }
}
