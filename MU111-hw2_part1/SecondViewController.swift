//
//  SecondViewController.swift
//  MU111-hw2_part1
//
//  Created by Danilenko Evgeny on 12.10.14.
//  Copyright (c) 2014 Danilenko Evgeny. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : LecturesViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myAlertView = UIAlertView()
        myAlertView.title = "Congratulation!!!☀️" // Вызов Emoji Command+Space
        myAlertView.message = "Login Success😳"
        myAlertView.addButtonWithTitle("ok")
        myAlertView.show()
      
     // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
