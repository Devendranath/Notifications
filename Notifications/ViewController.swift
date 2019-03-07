//
//  ViewController.swift
//  Notifications
//
//  Created by apple on 05/03/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBAction func addNitification(_ sender: Any) {
        
        let content = UNMutableNotificationContent()
        content.body = "This is body of the notification"
        content.title = "Title goes here"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        
        let request = UNNotificationRequest(identifier: "Reminder Notification", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
    }


}

