//
//  ViewController.swift
//  NotificationCenterExample
//
//  Created by Egon Fiedler on 9/26/18.
//  Copyright © 2018 App Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @objc func appDidReopenMethod(notification: Notification) {
        print("hello!")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(appDidReopenMethod(notification:)), name: NSNotification.Name(rawValue: "appDidReopen"), object: nil)
    }

    let name = Notification.Name("didReceiveData")
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

