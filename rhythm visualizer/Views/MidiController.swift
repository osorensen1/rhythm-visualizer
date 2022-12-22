//
//  MidiPlayer.swift
//  rhythm visualizer
//  Control MIDI Playback
//
//  Created by Olivia Sorensen on 12/14/22.
//

import AVFoundation.AVFAudio

class MidiController : ObservableObject {
    
    @Published var player : AVMIDIPlayer;
    var midiUrl : URL = URL(fileURLWithPath: "/Applications/Synthesia.app/Contents/Resources/beat44_clap.mid");
    
    init() {
        print(midiUrl);
        try! player = AVMIDIPlayer(contentsOf: midiUrl, soundBankURL: nil);
        
    }
    
    func play() {
        
    }
    


}
