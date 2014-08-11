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
                
//                var nateB = Person(firstName: "Nate", lastName: "Birkholz")
//                var matthewB = Person(firstName: "Matthew", lastName: "Brightbill")
//                var jeffC = Person(firstName: "Jeff", lastName: "Chavez")
//                var johnC = Person(firstName: "John", lastName: "Clem")
//                var christieF = Person(firstName: "Chrstie", lastName: "Ferderer")
//                var davidF = Person(firstName: "David", lastName: "Fry")
//                var adrianG = Person(firstName: "Adrian", lastName: "Gherle")
//                var jakeH = Person(firstName: "Jake", lastName: "Hawken")
//                var bradJ = Person(firstName: "Brad", lastName: "Johnson")
//                var shamsK = Person(firstName: "Shams", lastName: "Kazi")
//                var cameronK = Person(firstName: "Cameron", lastName: "Klein")
//                var koriK = Person(firstName: "Kori", lastName: "Kolodziejczak")
//                var parkerL = Person(firstName: "Parker", lastName: "Lewis")
//                var nathanM = Person(firstName: "Nathan", lastName: "Ma")
//                var caseyM = Person(firstName: "Casey", lastName: "MacPhee")
//                var brendanM = Person(firstName: "Brendan", lastName: "McAleer")
//                var brianM = Person(firstName: "Brian", lastName: "Mendez")
//                var markM = Person(firstName: "Mark", lastName: "Morris")
//                var rowanN = Person(firstName: "Rowan", lastName: "North")
//                var kevinP = Person(firstName: "Kevin", lastName: "Pham")
//                var willR = Person(firstName: "Will", lastName: "Richman")
//                var heatherT = Person(firstName: "Heather", lastName: "Thueringer")
//                var tuanV = Person(firstName: "Tuan", lastName: "Vu")
//                var zackW = Person(firstName: "Zack", lastName: "Walkingstick")
//                var saraW = Person(firstName: "Sara", lastName: "Wong")
//                var hiongyaoZ = Person(firstName: "Hongyao", lastName: "Zhang")
//                
//                var initialArray : NSMutableArray = [nateB.fullName(), matthewB.fullName(), jeffC.fullName(), johnC.fullName(), christieF.fullName(), davidF.fullName(), adrianG.fullName(), jakeH.fullName(), bradJ.fullName(), shamsK.fullName(), cameronK.fullName(), koriK.fullName(), parkerL.fullName(), nathanM.fullName(), caseyM.fullName(), brendanM.fullName(), brianM.fullName(), markM.fullName(), rowanN.fullName(), kevinP.fullName(), willR.fullName(), heatherT.fullName(), tuanV.fullName(), zackW.fullName(), saraW.fullName(), hiongyaoZ.fullName()]
                
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

