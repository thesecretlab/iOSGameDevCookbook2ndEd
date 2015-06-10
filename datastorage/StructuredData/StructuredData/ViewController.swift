//
//  ViewController.swift
//  StructuredData
//
//  Created by Jon Manning on 4/02/2015.
//  Copyright (c) 2015 Secret Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func locationToSaveTo() -> NSURL {
        return (NSFileManager.defaultManager()
            .URLsForDirectory(NSSearchPathDirectory.DocumentDirectory,
                inDomains: NSSearchPathDomainMask.UserDomainMask).last!)
            .URLByAppendingPathComponent("Data.json")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
// BEGIN saving_json
let informationToSave = [
    "playerName": "Grabthar",
    "weaponType": "Hammer",
    "hitPoints": 1000,
    "currentQuests": ["save the galaxy", "get home"]
]
        
let url : NSURL = locationToSaveTo()
        

let dataToSave: NSData?
do {
    dataToSave = try NSJSONSerialization.dataWithJSONObject(informationToSave,
        options: NSJSONWritingOptions())
} catch var error as NSError {
    print("Failed to convert to JSON! \(error)")
    dataToSave = nil
}
        
dataToSave?.writeToURL(url, atomically: true)
// END saving_json
        
// BEGIN loading_json
// Load the data
if let loadedData = NSData(contentsOfURL: url) {
            
    // Attempt to convert it to a dictionary that
    // maps strings to objects:
    do {
        let loadedInformation =
        try NSJSONSerialization.JSONObjectWithData(
            loadedData,
            options: NSJSONReadingOptions()) as? [String:AnyObject]
        
    } catch var error as NSError {
        // If we couldn't load it, or we couldn't load it
        // as the right type, log an error
        
        print("Error loading data! \(error)")
    }
   
}
// END loading_json
        
// BEGIN validating_objects
// Checking to see if an object is convertible to JSON
let dictionaryToCheck = ["canIDoThis": true]
        
let canBeConverted =
        NSJSONSerialization.isValidJSONObject(dictionaryToCheck) // == true
// END validating_objects
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

