//
//  PKNotificationStyle.swift
//  PKNotification
//
//  Created by Pouya Kahfi on 10/7/18.
//  Copyright © 2018 Pouya Kahfi. All rights reserved.
//

import UIKit

public enum PKNotificationViewStyle {
    
    public enum viewStyle {
        case floating, none
    }
    
    public enum fonts {
        
        static func defaultFont() -> UIFont {
            return UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.light)
        }
        
        static func customFont(font: UIFont) -> UIFont{
            return font
        }
        
    }
    
    public enum defaultTypes {
        case alert, success, error, plain
        
        func getColors() -> (textColor: UIColor, backgroundColor: UIColor) {
            switch self {
            case .alert:
                return (UIColor.white, UIColor.orange)
            case .success:
                return (UIColor.white, UIColor.orange)
            case .error:
                return (UIColor.white, UIColor.orange)
            case .plain:
                return (UIColor.white, UIColor.orange)
            }
        }
    
    }
    
    
    
}
