//
//  ViewController.swift
//  Postcard
//
//  Created by Greg Bell on 2015/1/31.
//  Copyright (c) 2015年 Greg Bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // updating attributes/properties
        messageLabel.hidden = false //hidden labels are booleans, true (hidden) or false (not hidden)
        messageLabel.text = enterMessageTextField.text
        
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        // clears out the text in the messageTextField; otherwise it would remain.
        // make the keyboard go away
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

