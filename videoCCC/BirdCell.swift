//
//  BirdCell.swift
//  videoCCC
//
//  Created by Amy Giver on 9/16/17.
//  Copyright © 2017 Amy Giver. All rights reserved.
//

import Foundation
import UIKit

class BirdCell: UITableViewCell {
    
    var delegate: BirdCellDelegate?
    
    @IBOutlet weak var birdImage: UIImageView!
    
    @IBOutlet weak var birdLabel: UILabel!
    
    
    @IBAction func deleteBirdWasPressed(_ sender: UIButton) {
        print("We're deleting!", birdLabel.text!)
        delegate?.deleteBird(requestedBy: self)
    }
    
}
