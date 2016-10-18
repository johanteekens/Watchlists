//
//  ViewController.swift
//  Watchlists
//
//  Created by Johan Teekens on 10/10/2016.
//  Copyright © 2016 Steltix. All rights reserved.
//

import UIKit

class ViewControllerSettings: UIViewController {

    //link UI elements
    
    
    @IBOutlet weak var SettingsConnectionUserFLD: UITextField!
    @IBOutlet weak var SettingsConnectionPasswordFLD: UITextField!
    @IBOutlet weak var SettingsConnectionURLFLD: UITextField!
    @IBOutlet weak var SettingsConnectionStatusFLD: UILabel!
    
    @IBOutlet weak var NavBar: UINavigationBar!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        SettingsConnectionUserFLD.text=Globals.sharedGlobal.username
        SettingsConnectionPasswordFLD.text = Globals.sharedGlobal.password
        SettingsConnectionURLFLD.text  = Globals.sharedGlobal.URL
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
   
    @IBAction func resignKeyboard(sender: AnyObject) {
        _ = sender.resignFirstResponder()
    }
    
    
    @IBAction func SyncNowBTN(_ sender: AnyObject) {
   
        
        //Save settings
        
        Globals.sharedGlobal.password = SettingsConnectionPasswordFLD.text! as String
        Globals.sharedGlobal.username = SettingsConnectionUserFLD.text! as String
        Globals.sharedGlobal.URL = SettingsConnectionURLFLD.text! as String
        Globals.updateWatchlists()
        SettingsConnectionStatusFLD.text=Globals.sharedGlobal.connectionStatus
        if (Globals.sharedGlobal.connectionStatus=="Connected")
        {
            NavBar?.backgroundColor=UIColor.green
        }
        else
        {NavBar?.backgroundColor=UIColor.red
        }
        
        
    }
    
    
    @IBAction func SettingsConnectionSaveBTN(_ sender: AnyObject) {
        
        Globals.sharedGlobal.password = SettingsConnectionPasswordFLD.text! as String
        Globals.sharedGlobal.username = SettingsConnectionUserFLD.text! as String
        Globals.sharedGlobal.URL = SettingsConnectionURLFLD.text! as String
        
        
    }
    

}

