//
//  PKNotificationView.swift
//  PKNotification
//
//  Created by Pouya Kahfi on 10/7/18.
//  Copyright © 2018 Pouya Kahfi. All rights reserved.
//

import UIKit

public class PKNotificationView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public convenience init(title: String) {
        self.init()
    }
    
    public convenience init(title: String, subtitle: String) {
        self.init()
    }
    
    public convenience init(title: String, subtitle: String, image: UIImage) {
        self.init()
    }
    
    public convenience init(image: String) {
        self.init()
    }
    
    public convenience init(title: String, image: String) {
        self.init()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
