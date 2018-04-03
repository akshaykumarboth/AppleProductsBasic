//
//  SelectorVC.swift
//  AppleProductsMac
//
//  Created by Akshay Both on 04/04/18.
//  Copyright © 2018 Akshay Both. All rights reserved.
//

import Cocoa

class SelectorVC: NSViewController {
    @IBOutlet weak var productSelection: NSPopUpButton!
    
    @IBAction func showInfoFor(_ sender: Any) {
        
        let storyboard: NSStoryboard = NSStoryboard(name: "Main", bundle: nil)
        //let newController: InformationVC = storyboard.instantiateController(withIdentifier: "InformationVC") as! InformationVC
        let newController: InformationVC = storyboard.instantiateController(withIdentifier: "InformationVC") as! InformationVC
        //let newController: InformationVC = NSViewController(nibName: NSNib.Name(rawValue: "InformationVC"), bundle: .main) as! InformationVC
        
        print(productSelection.indexOfSelectedItem )
        if productSelection.indexOfSelectedItem == 0 {
            newController._title = "iMac"
            newController._content = "iMac is big, powerful and awesome!"
            newController._image = NSImage(named: "imac")
        }
        
        if productSelection.indexOfSelectedItem == 1 {
            newController._title = "iPad"
            newController._content = "Info about the iPad is here "
            newController._image = NSImage(named: "ipad")
        }
        
        if productSelection.indexOfSelectedItem == 2 {
            newController._title = "iWatch"
            newController._content = "Info about the iWatch is here !"
            newController._image = NSImage(named: "iwatch")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
