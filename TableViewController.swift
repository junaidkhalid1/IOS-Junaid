//
//  TableViewController.swift
//  IOS-List
//
//  Created by Junaid KHALID on 18/01/17.
//  Copyright © 2017 Junaid KHALID. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let cellIdentifiers = "TableViewController"
    
    let apple1 = Apple.init(name: "Apple1", photo: nil, subtitle: "Iphone1", date: "March1", author: "Junaid1")

    let apple2 = Apple.init(name: "Apple2", photo: nil, subtitle: "Iphone2", date: "March2", author: "Junaid2")

    let apple3 = Apple.init(name: "Apple3", photo: nil, subtitle: "Iphone3", date: "March3", author: "Junaid3")

    
    var itemArray = [Apple.init(name: "Apple1", photo: nil, subtitle: "Iphone1", date: "March1", author: "Junaid1"), Apple.init(name: "Apple2", photo: nil, subtitle: "Iphone2", date: "March2", author: "Junaid2"), Apple.init(name: "Apple3", photo: nil, subtitle: "Iphone3", date: "March3", author: "Junaid3")]


    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "segueIdentifierName" {
            let detailViewController = segue.destinationViewController as! itemDetailViewController
            let indexPath = self.tableView.indexPathForSelectedRow!
            detailViewController.apps = self.itemArray[indexPath.row]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return itemArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier("customCellPrototype", forIndexPath: indexPath) as? studentCustomCellViewTable else {fatalError("error")}
        
        cell.cellLabel1.text = "Hello"
        cell.cellLabel2.text = "World"
        
    

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
