//
//  WhosOnViewController.swift
//  DV4mini
//
//  Created by David on 11/26/16.
//  Copyright © 2016 David Bankston. All rights reserved.
//

import UIKit

class WhosOnViewController: UIViewController {
  
    @IBOutlet weak var WhosOnWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        
        let DMRLiveURL = URL(string: "http://www.dv4.us/index.php/lets-see-whos-on/")
        let DMRLiveURLRequest = URLRequest(url: DMRLiveURL!)
        WhosOnWebView.loadRequest (DMRLiveURLRequest)
        
    }

    override func viewDidAppear(_ animated: Bool) {
        // 1
        let nav = self.navigationController?.navigationBar
        // 2
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.yellow
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        // 4
        let image = UIImage(named: "DV4mini_logo.png")
        imageView.image = image
        // 5
        navigationItem.titleView = imageView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
