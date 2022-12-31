//
//  TrackBuilder.swift
//  rhythm visualizer
//  Create the Track View based off of MIDI data
//
//  Created by Olivia Sorensen on 12/22/22.
//

import Foundation;
import MIKMIDI;


class TrackBuilder {
    var sequence : MIKMIDISequence;
    var tempo : Double; //in beats per minute
    final var BEAT_LENGTH = 100.0;
    
    
    
    init (midiUrl : URL) {
        sequence = try! MIKMIDISequence(fileAt: midiUrl);
        tempo = sequence.tempo(atTimeStamp: 0.0); //assume constant tempo throughout
        print(tempo);
        
        
    }
    
    func build() -> Track {
        let notes = buildNotes(track: sequence.tracks[0]);
        let barlines = buildBarlines(track: sequence.tracks[0])
        return Track(noteList: notes, barlineList: barlines);
    }
    
    func buildNotes(track : MIKMIDITrack) -> [CGFloat] {
        var notes : [CGFloat] = [];
        for midiNote in track.notes {
            notes.append(CGFloat(midiNote.timeStamp * BEAT_LENGTH));
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
    
    func buildTrackBG(track : MIKMIDITrack) -> CGFloat {
        return CGFloat(track.length * BEAT_LENGTH * 4); //assume constant 4/4 time
    }
    
}
