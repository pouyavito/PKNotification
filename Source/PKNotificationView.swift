//
//  PKNotificationView.swift
//  PKNotification
//
//  Created by Pouya Kahfi on 10/7/18.
//  Copyright © 2018 Pouya Kahfi. All rights reserved.
//

import UIKit

public class PKNotificationView: UIView {
    
    fileprivate(set) var titleText: String!
    fileprivate(set) var subtitleText: String!
    fileprivate(set) var currentImage: UIImage!
    
    public var delegate: PKNotificationDelegate!
    fileprivate var option: PKNotificationOption!
    
    fileprivate var notification: PKNotification!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public convenience init(title: String) {
        self.init()
        self.titleText = title
        notification = PKNotificationOption.text.notifcation(text: title, sub: "", img: UIImage())
        option = .text
        setupContainer()
    }
    
    public convenience init(title: String, subtitle: String) {
        self.init()
        self.titleText = title
        self.subtitleText = subtitle
        notification = PKNotificationOption.text.notifcation(text: title, sub: subtitle, img: UIImage())
        option = .textSub
        setupContainer()
    }
    
    public convenience init(title: String, subtitle: String, image: UIImage) {
        self.init()
        self.titleText = title
        self.subtitleText = subtitle
        self.currentImage = image
        notification = PKNotificationOption.text.notifcation(text: title, sub: subtitle, img: image)
        option = .textSubImage
        setupContainer()
    }
    
    public convenience init(image: UIImage) {
        self.init()
        self.currentImage = image
        notification = PKNotificationOption.text.notifcation(text: "", sub: "", img: image)
        option = .image
        setupContainer()
    }
    
    public convenience init(title: String, image: UIImage) {
        self.init()
        self.currentImage = image
        self.titleText = title
        notification = PKNotificationOption.text.notifcation(text: title, sub: "", img: image)
        option = .textImage
        setupContainer()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    fileprivate lazy var backgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    fileprivate lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate lazy var imageView: UIImageView = {
        let imv = UIImageView()
        imv.translatesAutoresizingMaskIntoConstraints = false
        return imv
    }()
    
    fileprivate func topLayer() -> UIView {
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
                
            }
            return topController.view
            // topController should now be your topmost view controller
        }
        return UIView(frame: CGRect.zero)
    }
    
    fileprivate enum orientation {
        case land, port
    }
    
    fileprivate func deviceOrientation() -> orientation {
        if UIDevice.current.orientation.isLandscape {
            return .land
        }else if UIDevice.current.orientation.isPortrait{
            return .port
        }else{
            return .port
        }
    }
    
    fileprivate func setupContainer() {
        translatesAutoresizingMaskIntoConstraints = false
        let top = topLayer()
        top.addSubview(containerView)
        if deviceOrientation() == .port {
            containerView.widthAnchor.constraint(equalTo: top.widthAnchor, multiplier: 0.9).isActive = true
        }else if deviceOrientation() == .land {
            containerView.widthAnchor.constraint(equalTo: top.widthAnchor, multiplier: 0.6).isActive = true
        }
        
        if #available(iOS 11.0, *) {
            containerView.topAnchor.constraint(equalTo: top.safeAreaLayoutGuide.topAnchor).isActive = true
        } else {
            containerView.topAnchor.constraint(equalTo: top.topAnchor).isActive = true
        }
        containerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        containerView.centerXAnchor.constraint(equalTo: top.centerXAnchor).isActive = true
        setupBackgroundView()
    }
    
    fileprivate func setupBackgroundView() {
        containerView.addSubview(backgroundView)
        backgroundView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
//        backgroundView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        backgroundView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        backgroundView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        backgroundView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.95).isActive = true
        backgroundView.layer.cornerRadius = 10
        if option == .text {
            setupTitle()
        }else if option == .textSub {
            setupTitle()
            setupSubtite()
        }else if option == .textSubImage {
            setupTitle()
            setupSubtite()
            setupImageView()
        }else if option == .textImage {
            setupTitle()
            setupImageView()
        }else if option == .image {
            setupImageView()
        }
    }
    
    fileprivate func setupTitle() {
        backgroundView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 10).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: backgroundView.leftAnchor, constant: 10).isActive = true
        titleLabel.text = titleText
    }
    
    fileprivate func setupSubtite() {
        
    }
    
    fileprivate func setupImageView() {
        
    }
    
    
}
