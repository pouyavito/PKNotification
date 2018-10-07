//
//  PKNotificationOption.swift
//  PKNotification
//
//  Created by Pouya Kahfi on 10/7/18.
//  Copyright © 2018 Pouya Kahfi. All rights reserved.
//

import UIKit

public enum PKNotificationOption {
    
    case text, textImage, image, textSub, textSubImage
    
    func notifcation(text: String, sub: String, img: UIImage) -> PKNotification {
        var notif: PKNotification!
        switch self {
        case .text:
            notif = PKNotification(text: text)
        case .textImage:
            notif = PKNotification(text: text, image: img)
        case .image:
            notif = PKNotification(image: img)
        case .textSub:
            notif = PKNotification(text: text, subtitle: sub)
        case .textSubImage:
            notif = PKNotification(text: text, subtitle: sub, image: img)
        }
        return notif
    }
    
    
    func navbarHeight() -> Float {
        return 53.0
    }
}
