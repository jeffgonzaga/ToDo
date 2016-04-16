//
//  SecondViewController.swift
//  ToDo
//
//  Created by Jeff Gonzaga on 16/04/2016.
//  Copyright © 2016 TryCatch. All rights reserved.
//

import UIKit

var myItemList=[String]()

class SecondViewController: UIViewController {

    @IBOutlet weak var myItemText: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        // validate the text field
        // put it on stack
        // clear the text field
        
        if myItemText.text?.characters.count>0
        {
            myItemList.append(myItemText.text!)
            myItemText.text=""
            self.view.endEditing(true)
            print(myItemList)
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

