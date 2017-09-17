//
//  BirdCellDelegate.swift
//  videoCCC
//
//  Created by Amy Giver on 9/16/17.
//  Copyright © 2017 Amy Giver. All rights reserved.
//

import Foundation
import UIKit

protocol BirdCellDelegate: class {
    func deleteBird(requestedBy: BirdCell)
}
