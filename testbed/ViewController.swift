//
//  ViewController.swift
//  testbed
//
//  Created by Sianny Mata Sanchez on 16/7/15.
//  Copyright (c) 2015 Sianny Mata Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let _version = "0.0.1"
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTextView()
        message("Testbed \(_version)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func initTextView() {
        textView.scrollEnabled = false
        textView.scrollEnabled = true
        
        textView.font = UIFont(name: "Courier", size: 14.0)
        textView.editable = false
    }
    
    private func message(msg: String) {
        textView.text = textView.text + msg + "\n"
        textView.scrollRangeToVisible(NSRange(location: count(textView.text) - 1, length: 0))
    }
 
}

