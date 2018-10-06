//
//  PKNotificationDelegate.swift
//  PKNotification
//
//  Created by Pouya Kahfi on 10/7/18.
//  Copyright © 2018 Pouya Kahfi. All rights reserved.
//

import Foundation

protocol PKNotificationDelegate: class {
    func notificationDidAppear(notification: PKNotification)
}
