//
//  ViewController.swift
//  FormInputDemo
//
//  Created by DEREK DO on 17/3/16.
//  Copyright © 2016 jackyCode.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var autoRefresh: UILabel!
    @IBOutlet weak var playSounds: UILabel!
    @IBOutlet weak var showPhotos: UILabel!
    
    var preferences: Preferences = Preferences() {
        didSet {
            updatedLabel()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatedLabel()

        
    }
    
    func updatedLabel() {
        autoRefresh.text = preferences.autoRefresh ? "yes" : "no"
        playSounds.text = preferences.playSounds ? "yes" : "no"
        showPhotos.text = preferences.showPhotos ? "yes" : "no"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showpreference" {
            print("s")
            if let nav:SettingTableViewController = segue.destinationViewController as?SettingTableViewController{
                    nav.curReferences = self.preferences
            } else {
                print("a")
            }
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindSave(unwindSegue: UIStoryboardSegue) {
        if let SVC = unwindSegue.sourceViewController as? SettingTableViewController {
            self.preferences =  SVC.GetReference()
        }        
    }
    
    @IBAction func unwindCancel(unwindSegue: UIStoryboardSegue) {
        
    }


}

