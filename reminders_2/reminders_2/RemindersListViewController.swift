//
//  RemindersListViewController.swift
//  reminders_2
//
//  Created by Jeffrey Chen on 11/28/19.
//  Copyright © 2019 Jeffrey Chen. All rights reserved.
//

import UIKit

class RemindersListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



    
    @IBOutlet weak var reminderName: UITextField!
    
    
    @IBOutlet weak var reminderSubject: UITextField!
    
    
    
    var name: String = ""

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "doneSegue" {
            name = reminderName.text!
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
