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
    
    var currentPrefs: Preferences!{
        didSet {
            prefValue[.AutoRefresh] = currentPrefs.autoRefresh
            prefValue[.PlaySounds]  = currentPrefs.playSounds
            prefValue[.ShowPhotos]  = currentPrefs.showPhotos
            tableView?.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentPrefs = Preferences()
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return StructOfTable.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StructOfTable[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! PrefereneSwitchCell
        
        let prefIdentifier = StructOfTable[indexPath.section][indexPath.row]
        
        cell.preRowIdentifier = prefIdentifier
        
        cell.onOffSwitch.on =  prefValue[prefIdentifier]!
        
        cell.delegate = self
        
        return cell
    }
    
    func onToggleSwitch(cell: PrefereneSwitchCell, newValue: Bool) {
        prefValue[cell.preRowIdentifier] = newValue
        print(prefValue)
    }


}
