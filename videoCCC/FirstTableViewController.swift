//
//  ViewController.swift
//  videoCCC
//
//  Created by Amy Giver on 9/16/17.
//  Copyright © 2017 Amy Giver. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController, BirdCellDelegate {
    
    var birds = ["BigBird", "emu", "owl"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BirdCell", for: indexPath) as! BirdCell
        cell.birdLabel.text = birds[indexPath.row]
        cell.birdImage.image = UIImage(named: birds[indexPath.row])
        cell.delegate = self
        return cell
    }
    
    func deleteBird(requestedBy: BirdCell){
        print("The delegate recognizes the request sent by the cell", requestedBy)
        if let index = tableView.indexPath(for: requestedBy){
            birds.remove(at: index.row)
            tableView.reloadData()
        }
    }

}

