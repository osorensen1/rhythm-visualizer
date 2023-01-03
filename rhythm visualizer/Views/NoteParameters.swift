//
//  NoteParameters.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 1/3/23.
//

import Foundation

struct NoteParameters : Hashable {
    var radius: CGFloat;
    var xPos: CGFloat;
    var yPos: CGFloat;
    var color : CGColor;
    
    init(radius : CGFloat = 50, xPos : CGFloat, yPos : CGFloat = 50, color : CGColor = CGColor.black) {
        self.radius = radius;
        self.xPos = xPos;
        self.yPos = yPos;
        self.color = color;
    }
}
