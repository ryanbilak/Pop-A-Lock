//
//  GameViewController.swift
//  Pop A Lock
//
//  Created by Ryan Bilak on 5/5/16.
//  Copyright (c) 2016 beachambilak. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController, GameDelegate {
    
    var continueMode: Bool?
    
    var newImage: UIImage?
    
    
    @IBOutlet weak var shareButton: UIButton!
    
    
    @IBAction func shareButtonHandler(sender: AnyObject) {
        
        if let image = newImage {
            
            share(image)
        }
        
        
    }

    @IBAction func menuButtonlabel(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shareButton.hidden = true

        let scene = GameScene(size: view.bounds.size)
        // Configure the view.
        let skView = self.view as! SKView
        //skView.showsFPS = true
        //skView.showsNodeCount = true
        
        /* Sprite Kit applies additional optimizations to improve rendering performance */
        skView.ignoresSiblingOrder = true
            
        /* Set the scale mode to scale to fit the window */
        scene.scaleMode = .AspectFill
        
        if let continueIsTrue = continueMode {
            
            scene.continueMode = continueIsTrue 
        }
        
        scene.gameDelegate = self
            
        skView.presentScene(scene)
        
}


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    func gameFinished() {
        
        shareButton.hidden = false 
        
    }
    
    func gameStarted() {
        
        snapPic()
        shareButton.hidden = true
    }
    
    func share(image: UIImage){
        
        let avc = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        presentViewController(avc, animated: true, completion: nil)
    }
    
    func snapPic() {
        
        UIGraphicsBeginImageContextWithOptions(self.view.frame.size, false, 1.0)
        self.view.drawViewHierarchyInRect(CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height), afterScreenUpdates: false)
        newImage = UIGraphicsGetImageFromCurrentImageContext()
        
    }


}





