//
//  MenuViewController.swift
//  Pop A Lock
//
//  Created by Ryan Bilak on 5/5/16.
//  Copyright © 2016 beachambilak. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBAction func playButtonHandler(sender: AnyObject) {
        
        let gvc = storyboard?.instantiateViewControllerWithIdentifier("gameViewController") as! GameViewController
        gvc.continueMode = false
        presentViewController(gvc, animated: true, completion: nil)
        
    }
    
    @IBAction func continueButtonHandler(sender: AnyObject) {
        
        let gvc = storyboard?.instantiateViewControllerWithIdentifier("gameViewController") as! GameViewController
        gvc.continueMode = true 
        presentViewController(gvc, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
