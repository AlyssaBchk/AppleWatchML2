//
//  ViewController.swift
//  AppleWatchML2
//
//  Created by Samuel Bellerose on 2015-11-21.
//  Copyright © 2015 Samuel Bellerose. All rights reserved.
//

import UIKit
import MBProgressHUD
import Alamofire

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        let loadingNotification = MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        loadingNotification.mode = MBProgressHUDMode.Indeterminate
        loadingNotification.labelText = "Loading"
        
        var projects = RequestUtility().getProjects()
        
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mainCell", forIndexPath: indexPath)
        cell.textLabel?.text = "test"
        
        return cell
    }
    
}

