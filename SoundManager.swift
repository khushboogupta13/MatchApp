//
//  SoundManager.swift
//  MatchApp
//
//  Created by Khushboo Gupta on 29/06/20.
//  Copyright © 2020 Khushboo Gupta. All rights reserved.
//

import Foundation
import AVFoundation

class SoundManager{
    
    var audioPlayer:AVAudioPlayer?
    
    enum SoundEffect{
        case flip
        case nomatch
        case ismatch
        case shuffle
    }
    
    func playSound(effect:SoundEffect){
        
        var soundFileName = ""
        
        switch effect {
            case .flip:
                soundFileName = "cardflip"
            case .ismatch:
                soundFileName = "dingcorrect"
            case .nomatch:
                soundFileName = "dingwrong"
            case .shuffle:
                soundFileName = "shuffle"
            default:
                soundFileName = ""
        }
        
        let bundlePath = Bundle.main.path(forResource: soundFileName, ofType: ".wav")
        
        guard bundlePath != nil else {
            return
        }
        
        let url = URL(fileURLWithPath: bundlePath!)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
        catch{
            print("Couldn't create an aurdio player")
            return
        }
        
        
    }
    
    
}
