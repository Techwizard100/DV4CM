//
//  SecondViewController.swift
//  DV4mini
//
//  Created by David on 11/20/16.
//  Copyright © 2016 David Bankston. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var TransmitBufferLabel: UILabel!
    @IBOutlet weak var TransmitBufferSizePickerView: UIPickerView!
    
    var buffervalues = ["0.25","0.5","1.0","1.5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TransmitBufferSizePickerView.delegate = self
        TransmitBufferSizePickerView.dataSource = self
     //   TransmitBufferSizePickerView.backgroundColor = UIColor.white
                 
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return buffervalues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return buffervalues[row]
    }
    
 //   func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
 //       TransmitBufferLabel.text = buffervalues[row]    }

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



}
