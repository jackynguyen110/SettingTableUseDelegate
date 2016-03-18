//
//  PreferenceViewController.swift
//  FormInputDemo
//
//  Created by jacky nguyen on 3/18/16.
//  Copyright © 2016 jackyCode.com. All rights reserved.
//

import UIKit

class PreferenceViewController: UIViewController,UITableViewDataSource, PrefereneSwitchCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var StructOfTable:[[PrefRowIdentifier]] = [[PrefRowIdentifier.AutoRefresh],[PrefRowIdentifier.PlaySounds, PrefRowIdentifier.ShowPhotos]]
    
    var prefValue: [PrefRowIdentifier: Bool] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func onToggleSwitch(cell: PrefereneSwitchCell, newValue: Bool) {
        <#code#>
    }


}
