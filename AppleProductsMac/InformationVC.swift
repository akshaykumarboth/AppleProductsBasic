//
//  InformationVC.swift
//  AppleProductsMac
//
//  Created by Akshay Both on 04/04/18.
//  Copyright © 2018 Akshay Both. All rights reserved.
//

import Cocoa

class InformationVC: NSViewController {
    
    @IBOutlet weak var titleLabel: NSTextField!
    @IBOutlet weak var contentLabel: NSTextField!
    @IBOutlet weak var imageView: NSImageView!
    
    var _title = " "
    var _content = " "
    var _image = NSImage(named:"")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        self.titleLabel.stringValue = _title
        self.contentLabel.stringValue = _content
        self.imageView.image = _image
    }
    
}
