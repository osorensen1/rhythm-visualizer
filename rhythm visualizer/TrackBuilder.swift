//
//  TrackBuilder.swift
//  rhythm visualizer
//  Create the Track View based off of MIDI data
//
//  Created by Olivia Sorensen on 12/22/22.
//

import Foundation;
import MIKMIDI;
import SwiftUI;


class TrackBuilder {
    var BEAT_LENGTH = 100.0;
    var tempo = 120.0;
    

    init() {

    }
         
    func build(midiURL : URL) -> Track {
        let sequence = try! MIKMIDISequence(fileAt: midiURL);
        tempo = sequence.tempo(atTimeStamp: 0.0); //assume constant tempo throughout
        let notes = buildNotes(track: sequence.tracks[1]);
        let barlines = buildBarlines(track: sequence.tracks[1])
        let trackLength = buildTrackBG(sequence: sequence)
        return Track(noteList: notes, barlineList: barlines, trackLength: trackLength);
    }
    
    func buildNotes(track : MIKMIDITrack) -> [NoteParameters] {
        var notes : [NoteParameters] = [];
        for midiNote in track.notes {
            notes.append(
                NoteParameters(
                    xPos: CGFloat(midiNote.timeStamp * BEAT_LENGTH)
                )
            );
        }
        return notes;
    }
    
    func buildBarlines(track : MIKMIDITrack) -> [CGFloat]{
        var barlines : [CGFloat] = [];
        for i in stride(from: 0.0, through: track.length, by: 1.0) {
            barlines.append(CGFloat(i * BEAT_LENGTH));
        }
        return barlines;
    }
    
    func buildTrackBG(sequence : MIKMIDISequence) -> CGFloat {
        return CGFloat(sequence.length * BEAT_LENGTH * 4); //assume constant 4/4 time
    }
    
    func getSecondLength() -> CGFloat {
        return CGFloat((tempo/60) * BEAT_LENGTH);
    }
    
}
