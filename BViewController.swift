//
//  BViewController.swift
//  Pass Value With Protocol
//
//  Created by Anil on 28/02/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

protocol changeDelegate : NSObjectProtocol{
    
    func returnCard(labelText:NSString)
}

class BViewController: UIViewController {

    var delegate:changeDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func rrrr(sender: AnyObject) {
        
        println("Go Back Pressed")
        self.dismissViewControllerAnimated(true, completion:{
            println("start")
            self.delegate?.returnCard("1234")
        })
    }
}
