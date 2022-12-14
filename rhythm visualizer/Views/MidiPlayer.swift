//
//  MidiPlayer.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/14/22.
//

import AVFoundation.AVFAudio

struct MidiPlayer {
    var player : AVMIDIPlayer;
    
    init() {
        do {
            try player = AVMIDIPlayer(contentsOf: URL(fileURLWithPath: "test.midi"), soundBankURL: nil)
        } catch {
            print("could not load midi player");
        }
    }
    
    func play() {
        
    }
    
    func generateNotes() -> NoteList {
        let noteList = NoteList(size: 0);
        return noteList;
    }
}
