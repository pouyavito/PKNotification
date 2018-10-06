//
//  PKNotificationDelegate.swift
//  PKNotification
//
//  Created by Pouya Kahfi on 10/7/18.
//  Copyright © 2018 Pouya Kahfi. All rights reserved.
//

import Foundation

public protocol PKNotificationDelegate: class {
    
    func notificationDidDissmiss(notification: PKNotification)
    
    func notificationDidAppear(notification: PKNotification)
    
    func didTapOnNotification(notification: PKNotification)
    
}
