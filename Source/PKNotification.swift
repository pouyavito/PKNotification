//
//  PKNotification.swift
//  PKNotification
//
//  Created by Pouya Kahfi on 10/7/18.
//  Copyright © 2018 Pouya Kahfi. All rights reserved.
//

import UIKit

public class PKNotification: NSObject {
    
    var text: String!
    var image: UIImage!
    var subtitle: String!
    
    init(text: String) {
        self.text = text
    }
    
    init(image: UIImage) {
        self.image = image
    }
    
    init(text: String, subtitle: String) {
        self.text = text
        self.subtitle = subtitle
    }
    
    init(text: String, image: UIImage) {
        self.text = text
        self.image = image
    }
    
    init(text: String, subtitle: String, image: UIImage) {
        self.text = text
        self.image = image
        self.subtitle = subtitle
    }
    
    
}
