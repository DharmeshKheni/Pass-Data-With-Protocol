//
//  AViewController.swift
//  Pass Value With Protocol
//
//  Created by Anil on 28/02/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class AViewController: UIViewController, changeDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func returnCard(labelText: NSString) {
        
        println(labelText)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var BView = segue.destinationViewController as BViewController
        BView.delegate = self
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
