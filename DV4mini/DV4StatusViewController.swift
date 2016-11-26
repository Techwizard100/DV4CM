//
//  DV4StatusViewController.swift
//  DV4mini
//
//  Created by David on 11/25/16.
//  Copyright © 2016 David Bankston. All rights reserved.
//

import Foundation

import UIKit

class DV4StatusViewController: UITableViewController {
    
    var servers = [MasterServerList] ()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.servers = [MasterServerList(name: "Server 1"), MasterServerList(name: "Server 2"),MasterServerList(name: "Server 3"),MasterServerList(name: "Server 4")]
        
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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.servers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
 //   overide func tableView(tableView: UITableView, cellForRowAtindexPath indexPath:NSIndexPath) -> UITableViewCell {
 
    let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", forIndexPath: IndexPath) as UITableViewCell
    
        var servername : MasterServerList
        servername = servers[indexPath.row]
    
        cell.textLabel?.text = servername.name
    
        return cell
    }


