//
//  RemindersListTableViewController.swift
//  reminders_2
//
//  Created by Jeffrey Chen on 11/28/19.
//  Copyright © 2019 Jeffrey Chen. All rights reserved.
//

import UIKit

class RemindersListTableViewController: UITableViewController {
    
    //var reminders = [[String]]()
    //var reminders = [[String]]()
    
    
    var all_reminders:[[String]] = [
        ["Elon Musk",       "+1-201-3141-5926"],
        ["Bill Gates",      "+1-202-5358-9793"],
    ]
    
    
    
    //var reminder_subjects = [String]()
    var newReminder: String = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //reminders = []

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return all_reminders.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "reminderCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "reminderCell")
        }
        
        print("\(#function) --- section = \(indexPath.section), row = \(indexPath.row)")

        //cell.textLabel?.text = reminders[indexPath.row][0]

        
        cell!.textLabel?.text = all_reminders[indexPath.row][0]
        cell!.detailTextLabel?.text = all_reminders[indexPath.row][1]

        return cell!
        //return cell
    }
    
    
    //delete elements go down below
    /*
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            reminders.remove(at: reminders[indexPath.row][0])
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    */
    
    
    @IBAction func cancel(segue:UIStoryboardSegue) {
      
    }
    
    
    @IBAction func done(segue: UIStoryboardSegue) {
        let reminderDetailVC = segue.source as! RemindersListViewController
        
        newReminder = reminderDetailVC.name
        all_reminders.append(newReminder)
        tableView.reloadData()

    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
