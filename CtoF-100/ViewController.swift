//
//  ViewController.swift
//  CtoF-100
//
//  Created by Patrick Roberts on 11/29/16.
//  Copyright © 2016 Patrick Roberts. All rights reserved.
//
// reference http://www.rapidtables.com/convert/temperature/how-fahrenheit-to-celsius.htm
//


import Cocoa


class ViewController: NSViewController {
    
    func dialogOKCancel(question: String, text: String) -> Bool {
        let myPopup: NSAlert = NSAlert()
        myPopup.messageText = question
        myPopup.informativeText = text
        myPopup.alertStyle = NSAlertStyle.informational
        myPopup.addButton(withTitle: "OK")
        return myPopup.runModal() == NSAlertFirstButtonReturn
    }



    override func viewDidLoad() {
        super.viewDidLoad()
       texttwo.textColor = NSColor.blue
       textone.textColor = NSColor.blue
       print(" View Did Load ")

        // Do any additional setup after loading the view.
    }
   

    override var representedObject: Any? {
      
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func MyCalcButton(_ sender: NSButtonCell) {
      
    var tempnum = 00.00
        
       print(" Calc Button Pressed") // report button press
       tempnum = ((textone.doubleValue - 32) * 5/9) // do calc
       texttwo.doubleValue = round(tempnum) // round product
       NSBeep()
        
    }
    
    @IBAction func clearbutton(_ sender: NSButton) {
        print(" Clear Button Pressed")
        textone.doubleValue = 0
        texttwo.doubleValue = 0
        NSBeep()
        
    }
    @IBAction func AboutButton(_ sender: NSButton) {
      NSBeep()
      _ = dialogOKCancel(question: " Temperature Converter ", text: " From Patrick Roberts Software \r \n All Rights Reserved Copyright 2016 ")
      print(" About Button Pressed")
        
    }
 
     @IBOutlet var textone: NSTextField!
     @IBOutlet var texttwo: NSTextField!
}

