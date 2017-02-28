//
//  ThirdVideController.swift
//  DV4mini
//
//  Created by David on 11/20/16.
//  Copyright © 2016 David Bankston. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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


}

