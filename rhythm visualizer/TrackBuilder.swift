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
        return Track(noteList: notes);
    }
    
    func buildNotes(track : MIKMIDITrack) -> [CGFloat] {
        var notes : [CGFloat] = [];
        for midiNote in track.notes {
            notes.append(CGFloat(midiNote.timeStamp * BEAT_LENGTH));
        }
        return notes;
    }
    
}
