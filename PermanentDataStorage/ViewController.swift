//
//  ViewController.swift
//  PermanentDataStorage
//
//  Created by Gladys Umali on 8/5/16.
//  Copyright © 2016 Joy Umali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var entryField: UITextField!
  //  var number = "placeholder"
    
    @IBAction func save(_ sender: AnyObject) {
        
    UserDefaults.standard.set(entryField.text, forKey: "number")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            
        entryField.text = number
            
        }
    
    
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

