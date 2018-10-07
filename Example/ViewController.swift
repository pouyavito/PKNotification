//
//  ViewController.swift
//  PKNotification
//
//  Created by Pouya Kahfi on 10/7/18.
//  Copyright © 2018 Pouya Kahfi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var notif: PKNotificationView!

    override func viewDidLoad() {
        super.viewDidLoad()
        notif = PKNotificationView(style: PKNotificationViewStyle.viewStyle.floating)
        view.addSubview(notif)
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (_) in
            self.notif.show(title: "Hello")
        }
        
    }


}

