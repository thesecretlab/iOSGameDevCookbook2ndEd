//
//  ViewController.swift
//  DetectingTouches
//
//  Created by Jon Manning on 16/01/2015.
//  Copyright (c) 2015 Secret Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // BEGIN touch_funcs
    override func touchesBegan(touches: Set<UITouch>,
        withEvent event: UIEvent?) {
            
        for touch in touches {
            NSLog("A touch began at \(touch.locationInView(self.view))")
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>,
        withEvent event: UIEvent?) {
        
        for touch in touches {
            NSLog("A touch moved at \(touch.locationInView(self.view))")
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>,
        withEvent event: UIEvent?) {
            
        for touch in touches {
            NSLog("A touch ended at \(touch.locationInView(self.view))")
        }
    }
    
    override func touchesCancelled(touches: Set<UITouch>?,
        withEvent event: UIEvent?) {
            
        for touch in touches! {
            NSLog("A touch was cancelled at \(touch.locationInView(self.view))")
        }
    }
    // END touch_funcs


}

