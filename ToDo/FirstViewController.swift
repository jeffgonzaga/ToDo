//
//  FirstViewController.swift
//  ToDo
//
//  Created by Jeff Gonzaga on 16/04/2016.
//  Copyright © 2016 TryCatch. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDataSource {

    
    @IBOutlet weak var myTableView: UITableView!
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
            myItemList.removeAtIndex(indexPath.row)
            myTableView.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myItemList.count;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCell")
        myCell.textLabel?.text = myItemList[indexPath.row]
        return myCell
    }
    
    
    override func viewDidAppear(animated: Bool) {
        myTableView.reloadData()
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

