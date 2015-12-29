//
//  SecondViewController.swift
//  FlipDemo
//
//  Created by Nimble Chapps on 29/12/15.
//  Copyright © 2015 Nimble Chapps. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func clickFirst(sender: AnyObject) {
        
        let  mainStory = UIStoryboard(name: "Main", bundle: nil)
        let search = mainStory.instantiateViewControllerWithIdentifier("FirstViewController") as! FirstViewController
        UIView.beginAnimations("animation", context: nil)
        UIView.setAnimationDuration(1.0)
        self.navigationController!.pushViewController(search, animated: false)
        UIView.setAnimationTransition(UIViewAnimationTransition.FlipFromLeft, forView: self.navigationController!.view, cache: false)
        UIView.commitAnimations()
        
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
