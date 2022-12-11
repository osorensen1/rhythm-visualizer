//
//  ContentView.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Track()
            Barline()
            Note()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
