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
        notif = PKNotificationView(title: "Bla bla")
        view.addSubview(notif)
    }


}

