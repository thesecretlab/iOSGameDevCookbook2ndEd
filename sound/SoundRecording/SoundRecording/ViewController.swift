//
//  ViewController.swift
//  SoundRecording
//
//  Created by Jon Manning on 3/02/2015.
//  Copyright (c) 2015 Secret Lab. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var audioRecorder : AVAudioRecorder?
    var audioPlayer : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let destinationURL = self.audioRecordingURL()
        
// BEGIN setup
// destinationURL is the location of where we want to store our recording
do {
    audioRecorder = try AVAudioRecorder(URL:destinationURL, settings:[:])
} catch var error as NSError {
    print("Couldn't create a recorder: \(error)")
    audioRecorder = nil
}
        
audioRecorder?.prepareToRecord()
// END setup

    }

    func audioRecordingURL() -> NSURL {
// BEGIN documents_url
let documentsURL = NSFileManager.defaultManager()
    .URLsForDirectory(NSSearchPathDirectory.DocumentDirectory,
        inDomains:NSSearchPathDomainMask.UserDomainMask).last!
// END documents_url
        
// BEGIN filename
return documentsURL.URLByAppendingPathComponent("RecordedSound.wav")
// END filename

    }
    

    @IBAction func startRecording(sender : UIButton) {
        
        if (audioRecorder?.recording == true) {
// BEGIN stop
audioRecorder?.stop()
// END stop
            sender.setTitle("Start Recording", forState:UIControlState.Normal)
        } else {
// BEGIN record
audioRecorder?.record()
// END record
            sender.setTitle("Stop Recording", forState:UIControlState.Normal)
        }

    }
    
    @IBAction func playRecording(sender : UIButton) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL:self.audioRecordingURL())
        } catch _ {
            audioPlayer = nil
        }
        
        audioPlayer?.play()
        
    }
    
    
}
            
           