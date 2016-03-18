//
//  SettingTableViewController.swift
//  FormInputDemo
//
//  Created by DEREK DO on 17/3/16.
//  Copyright © 2016 jackyCode.com. All rights reserved.
//

import UIKit


class SettingTableViewController: UITableViewController {
    
    @IBOutlet weak var autoRefreshSwitch: UISwitch!
    @IBOutlet weak var playSounds: UISwitch!
    @IBOutlet weak var showPhotos: UISwitch!
    
    var curReferences:Preferences!

    override func viewDidLoad() {
        super.viewDidLoad()
        initSwitches()
    }

    func GetReference() -> Preferences {
        let references = Preferences()
        references.autoRefresh = autoRefreshSwitch.on
        references.playSounds = playSounds.on
        references.showPhotos = showPhotos.on
        return references
    }
    
    func initSwitches() {
        autoRefreshSwitch?.on = curReferences.autoRefresh
        playSounds?.on = curReferences.playSounds
        showPhotos?.on = curReferences.showPhotos
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  3
    }

}



