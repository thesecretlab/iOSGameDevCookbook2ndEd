//
//  ViewController.swift
//  SimpleAudioPlayer
//
//  Created by Jon Manning on 3/02/2015.
//  Copyright (c) 2015 Secret Lab. All rights reserved.
//

import UIKit

// BEGIN import
import AVFoundation
// END import

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
// BEGIN creating
// BEGIN resource
let soundFileURL = NSBundle.mainBundle().URLForResource("TestSound",
    withExtension:"wav")
// END resource
// BEGIN error
// BEGIN create
do {
    audioPlayer = try AVAudioPlayer(contentsOfURL: soundFileURL!)
} catch var error as NSError {
    // BEGIN check_error
    print("Failed to load the sound: \(error)")
    audioPlayer = nil
    // END check_error

}
// END create
// END error

        
        
audioPlayer?.prepareToPlay()
// END creating

    }
    
    @IBAction func playSound(sender : AnyObject) {
        
// BEGIN play
audioPlayer?.play()
// END play
        
        /* 
// BEGIN pause_stop
// To pause:
audioPlayer?.pause()
// To stop:
audioPlayer?.stop()
// END pause_stop
        
        // To rewind:
// BEGIN rewind
audioPlayer.currentTime = 0
// END rewind
        */
    }
    
    @IBAction func loopModeChanged(loopSwitch : UISwitch) {
        
        if (loopSwitch.on) {
// BEGIN loop
audioPlayer?.numberOfLoops = -1
// END loop
        } else {
// BEGIN no_loop
audioPlayer?.numberOfLoops = 0
// END no_loop
        }
        
        /* To loop one time (ie play twice):
// BEGIN loop_once
audioPlayer?.numberOfLoops = 1
// END loop_once
        */
    }
}
 