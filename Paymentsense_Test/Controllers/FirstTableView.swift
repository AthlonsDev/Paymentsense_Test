//
//  ViewController.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import UIKit

let categoryNotification = "com.project.test"
let categoryNotificationName = Notification.Name(categoryNotification)

class FirstTableView: UITableViewController {

    var rawData = [String]()
    let cellID = "cellID"
    var category = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rawData = ["Characters", "Episodes", "Quotes"]
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        

        
    }

    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rawData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let data = rawData[indexPath.row]
        cell.textLabel?.text = data
        
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selected = tableView.cellForRow(at: indexPath)
        
        guard let CategorySelected = selected?.textLabel?.text else {return}
        
        category = CategorySelected

        performSegue(withIdentifier: "SecondView", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)

        if let destination = segue.destination as? SecondTableView {
            destination.category = category
        }
    }

}

