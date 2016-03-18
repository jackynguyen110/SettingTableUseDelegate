//
//  Preference.swift
//  FormInputDemo
//
//  Created by DEREK DO on 17/3/16.
//  Copyright © 2016 jackyCode.com. All rights reserved.
//

import Foundation

class Preferences {
    var autoRefresh = false, playSounds = true, showPhotos = true
}

enum PrefRowIdentifier : String {
    case AutoRefresh = "Auto Refresh"
    case PlaySounds = "Play Sounds"
    case ShowPhotos = "Show Photos"
}