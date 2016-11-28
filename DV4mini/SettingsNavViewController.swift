//
//  SettingsNavViewController.swift
//  DV4mini
//
//  Created by David on 11/28/16.
//  Copyright © 2016 David Bankston. All rights reserved.
//

import UIKit

class SettingsNavViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onScanButtonPressed(sender: UIButton)
    {
        let storyboard = UIStoryboard(name: "peripherals", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "InitialController") as UIViewController
        
        self.present(controller, animated: true, completion: nil)
    }
    
    
   //  func openNewStoryboard() {
   //     let storyboard = UIStoryboard(name: "enter_name_here", bundle: nil)
   //     let controller = storyboard.instantiateInitialViewController() as /UIViewController
   //     self.presentViewController(controller, animated: true, completion: nil)
   //   }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

