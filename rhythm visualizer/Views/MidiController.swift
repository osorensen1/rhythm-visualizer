//
//  MidiPlayer.swift
//  rhythm visualizer
//
//  Created by Olivia Sorensen on 12/14/22.
//

import AVFoundation.AVFAudio

class MidiController : ObservableObject {
    
    @Published var player : AVMIDIPlayer;
    var midiUrl : NSURL = NSURL(fileURLWithPath: "/Applications/Synthesia.app/Contents/Resources/beat44_clap.mid");
    
    init() {
        print(midiUrl as URL);
        try! player = AVMIDIPlayer(contentsOf: midiUrl as URL, soundBankURL: nil);
    }
    
    func play() {
        
    }
    
    func generateNotes() -> NoteList {
        let noteList = NoteList(size: 0);
        return noteList;
    }

}
