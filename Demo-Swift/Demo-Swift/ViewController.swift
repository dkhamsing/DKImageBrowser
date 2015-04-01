//
//  ViewController.swift
//  Demo-Swift
//
//  Created by Daniel Khamsing on 3/13/15.
//  Copyright (c) 2015 Daniel Khamsing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "DKImageBrowser"
        
        self.view.backgroundColor = UIColor.orangeColor()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Default", style: UIBarButtonItemStyle.Plain, target: self, action: "actionDefault")
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Custom", style: UIBarButtonItemStyle.Plain, target: self, action: "actionCustom")
    }
    
    func actionDefault() {
        let imageBrowser = DKImageBrowser()
        imageBrowser.title = "UIImage Data Source"
        
        var imageDataSource: [UIImage] = [
            UIImage(named: "400-1.jpg")!,
            UIImage(named: "400-2.jpg")!,
        ]
        imageBrowser.DKImageDataSource = imageDataSource
        
        self.navigationController?.pushViewController(imageBrowser, animated: true)
    }
    
    func actionCustom() {
        var kittenDataSource: [NSString] = []
        let imageHeight = 416
        let imageWidth = Int(self.view.bounds.size.width - 20)
        
        for index in 1...10 {
            let placeKitten = "http://placekitten.com/\(imageWidth + (index * 2  + 10))/\(imageHeight)" as NSString
            kittenDataSource.append(placeKitten)
        }
        
        let modalImageBrowser = DKModalImageBrowser()
        modalImageBrowser.title = "URL Data Source"
        
        modalImageBrowser.imageBrowser.DKImageDataSource = kittenDataSource
        modalImageBrowser.imageBrowser.DKImagePadding = 5
        modalImageBrowser.imageBrowser.DKThumbnailStripHeight = 110
        modalImageBrowser.imageBrowser.DKBackgroundColor = UIColor.blackColor()
        modalImageBrowser.imageBrowser.DKThumbnailStripPosition = 0
        modalImageBrowser.imageBrowser.DKStartIndex = 2
        
        self.presentViewController(modalImageBrowser, animated: true, completion: nil)
    }
    
}

