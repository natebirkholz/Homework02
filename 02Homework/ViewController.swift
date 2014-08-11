//
//  ViewController.swift
//  02Homework
//
//  Created by Nathan Birkholz on 8/10/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import UIKit
import CoreData

var peopleDirectory = [String]()

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println("\nview did load")
        println()
        
        let fileManager = (NSFileManager.defaultManager())
        let directorys : [String]? = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory,NSSearchPathDomainMask.AllDomainsMask, true) as? [String]
        
        println("value of directorys is \(directorys)")
    
        if (directorys != nil){
            let directories:[String] = directorys!;
            let pathToFile = directories[0]; //documents directory
            
            let plistfile = "PeopleArray.plist"


            
            
            let plistpath = pathToFile.stringByAppendingPathComponent(plistfile);
            
            if !fileManager.fileExistsAtPath(plistpath){  //writing Plist file
                
                println("\n++++++++++++\nAbout to call array creator\n++++++++++++\n")
                var initialArray = fillPlist()
                println("\n++++++++++++\nFinished calling array creator\n++++++++++++\n")
                
                println("Initial Array is \(initialArray)")
                
                initialArray.writeToFile(plistpath, atomically: false)
                println("\n\n++++++++++++\nI wrote an array to the file at\n\n\(plistpath) \n\nthe data is\n\n\(initialArray)\n++++++++++++\n")
                
                println("\nAbout to assign across arrays")
                var peopleArray = initialArray
                println("\nFinished assigning across arrays")
            }
            else{            //Reading Plist file
                println("\n\nPlist file found at \(plistpath)")
                
                var peopleArray = NSMutableArray.arrayWithContentsOfFile(plistpath)
                println("\(peopleArray)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
//    let documentsDirectory = paths.objectAtIndex(0) as NSString
//    let path = documentsDirectory.stringByAppendingPathComponent("MyFile.plist")
//    
//    data.writeToFile(path, atomically: true)

}

