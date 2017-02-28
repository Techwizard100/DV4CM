//
//  FourthViewController.swift
//  DV4mini
//
//  Created by David on 11/20/16.
//  Copyright © 2016 David Bankston. All rights reserved.
//

import UIKit


class FourthViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    
    @IBOutlet var pageControl: UIPageControl!
    
    @IBOutlet var ScrollViewExpert: UIScrollView!
    
    @IBOutlet var pickerView2: UIPickerView!
    
    var pickerDataSource = ["-500","-400","-300","-200","-100","0", "+100","+200", "+300", "+400","+500"];
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView2.dataSource = self;
        pickerView2.delegate = self;
        pickerView2.backgroundColor = UIColor.white
        ScrollViewExpert.contentSize.height = 1000
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
    
    
    
    // returns the number of 'columns' to display.
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    @available(iOS 2.0, *)
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource [row]
        
    }
    
 //   func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
 //       let titleData = pickerDataSource [row]
        
 //       let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 15.0)!,NSForegroundColorAttributeName:UIColor.blueColor()])
 //       return myTitle
 //   }
}
