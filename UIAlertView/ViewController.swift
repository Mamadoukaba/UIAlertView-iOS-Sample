//
//  ViewController.swift
//  UIAlertView
//
//  Created by Mamadou Kaba on 6/15/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    var alertController: UIAlertController!
    
    //MARK: View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertController = UIAlertController(title: "Here is the title", message: "Here is the description", preferredStyle: .Alert)
        
        alertController.addTextFieldWithConfigurationHandler { (textField) in
            textField.placeholder = "password"
        }
        
        let alertAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            print("Cancel Button Pressed!")
        }
        
        let alertActionForTextField = UIAlertAction(title: "Sign In", style: .Default) { (action) in
            if let textFields = self.alertController.textFields {
                let theTextFields = textFields
                let password = theTextFields[0].text!
                print("Your Password is: \(password)")
            }
        }
        
        alertController.addAction(alertAction)
        alertController.addAction(alertActionForTextField)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.presentViewController(alertController!, animated: true, completion: nil)
    }

    //MARK: Target Action
    
    


}

