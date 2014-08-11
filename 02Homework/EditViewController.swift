//
//  EditViewController.swift
//  02Homework
//
//  Created by Nathan Birkholz on 8/10/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import UIKit
import CoreData

class EditViewController: UIViewController {
    @IBOutlet var FirstNameTextField: UITextField!
    @IBOutlet var LastNameTextField: UITextField!
    


    @IBAction func saveButtonClick(sender: UIButton) {
        println("Save \(FirstNameTextField.text)")
        var appDel : AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        var context : NSManagedObjectContext = appDel.managedObjectContext!
    }

    @IBAction func loadButtonClick(sender: UIButton) {
        println("Load \(LastNameTextField.text)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
