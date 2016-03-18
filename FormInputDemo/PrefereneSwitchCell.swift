//
//  PrefereneSwitchCell.swift
//  FormInputDemo
//
//  Created by jacky nguyen on 3/18/16.
//  Copyright © 2016 jackyCode.com. All rights reserved.
//

import UIKit

protocol PrefereneSwitchCellDelegate: class {
    func onToggleSwitch(cell: PrefereneSwitchCell, newValue: Bool)
}

class PrefereneSwitchCell: UITableViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var onOffSwitch: UISwitch!
    
    var delegate:PrefereneSwitchCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    var preRowIdentifier: PrefRowIdentifier! {
        didSet {
            descriptionLabel.text = preRowIdentifier?.rawValue
        }
    }

    @IBAction func onOffSwitchTapped(sender: AnyObject) {
        delegate?.onToggleSwitch(self, newValue: onOffSwitch.on)
    }
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
