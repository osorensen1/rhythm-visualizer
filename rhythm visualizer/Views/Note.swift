//
//  Note.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct Note: View {
    var body: some View {
        Circle()
            .size(CGSize(width: 10.0, height: 10.0))
            .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
    }
}

struct Note_Previews: PreviewProvider {
    static var previews: some View {
        Note()
    }
}