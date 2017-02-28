//
//  DeviceTableViewCell.swift
//  BLEScanner
//
//  Created by Harry Goodwin on 10/07/2016.
//  Copyright © 2016 GG. All rights reserved.
//

import UIKit
import CoreBluetooth

protocol DeviceCellDelegate: class {
	func connectPressed(_ peripheral: CBPeripheral)
}

class DeviceTableViewCell: UITableViewCell {

	@IBOutlet weak var deviceNameLabel: UILabel!
	@IBOutlet weak var deviceRssiLabel: UILabel!
	@IBOutlet weak var connectButton: UIButton!
	
	var delegate: DeviceCellDelegate?
	
	var displayPeripheral: DisplayPeripheral? {
		didSet {
			if let deviceName = displayPeripheral!.peripheral?.name{
				deviceNameLabel.text = deviceName.isEmpty ? "No Device Name" : deviceName
			}else{
				deviceNameLabel.text = "No Device Name"
			}
			
			if let rssi = displayPeripheral!.lastRSSI {
				deviceRssiLabel.text = "\(rssi)dB"
			}
			
			connectButton.isHidden = !(displayPeripheral?.isConnectable!)!
		}
	}
	
	@IBAction func connectButtonPressed(_ sender: AnyObject) {
		delegate?.connectPressed((displayPeripheral?.peripheral)!)
	}
}
