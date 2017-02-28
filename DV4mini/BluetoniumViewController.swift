//
//  BluetoniumViewController.swift
//  DV4mini
//
//  Created by David on 11/25/16.
//  Copyright © 2016 David Bankston. All rights reserved.
//

import Foundation

import UIKit

import BluetoothKit

class BluetoothKitViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let peripheral = BKPeripheral()
        peripheral.delegate = self
        do {
            let serviceUUID = NSUUID(UUIDString: "F9B48220-D449-4A76-80B5-C52B078C6816")!
            let characteristicUUID = NSUUID(UUIDString: "F9B48220-D449-4A76-80B5-C52B078C6816")!
            let localName = "My Cool Peripheral"
            let configuration = BKPeripheralConfiguration(dataServiceUUID: serviceUUID, dataServiceCharacteristicUUID:  characteristicUUID, localName: localName)
            try peripheral.startWithConfiguration(configuration)
            // You are now ready for incoming connections
        } catch let error {
            // Handle error.
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    central.scanWithDuration(3, progressHandler: { newDiscoveries in
    // Handle newDiscoveries, [BKDiscovery].
    }, completionHandler: { result, error in
    // Handle error.
    // If no error, handle result, [BKDiscovery].
    })
    
    central.scanContinuouslyWithChangeHandler({ changes, discoveries in
    // Handle changes to "availabile" discoveries, [BKDiscoveriesChange].
    // Handle current "available" discoveries, [BKDiscovery].
    // This is where you'd ie. update a table view.
    }, stateHandler: { newState in
    // Handle newState, BKCentral.ContinuousScanState.
    // This is where you'd ie. start/stop an activity indicator.
    }, duration: 3, inBetweenDelay: 3, errorHandler: { error in
    // Handle error.
    })
    
    central.connect(remotePeripheral: peripherals[indexPath.row]) { remotePeripheral, error in
    // Handle error.
    // If no error, you're ready to receive data!
    }
}
