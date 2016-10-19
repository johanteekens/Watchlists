//
//  ViewControllerAbout.swift
//  Watch Watchlist
//
//  Created by Johan Teekens on 07/10/2016.
//  Copyright © 2016 Steltix. All rights reserved.
//

import Foundation
import UIKit


class ViewControllerAbout: UIViewController {
    
    
    @IBAction func OpenSteltixURLBTN(_ sender: AnyObject) {
    
    openURL (scheme: "http://www.steltix.com")
    }
    
    func openURL(scheme: String) {
        if let url = URL(string: scheme) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:],
                                          completionHandler: {
                                            (success) in
                                            print("Open \(scheme): \(success)")
                })
            } else {
                let success = UIApplication.shared.openURL(url)
                print("Open \(scheme): \(success)")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
