//
//  SecondTableView.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class SecondTableView: UITableViewController {
    
    
    
    let cellID = "cellID"
    var charViewModel = [CharacterViewModel]()
    var category = String()
    
    override func viewDidLoad() {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)

        getData()
    }
    
    func getData() {
        
        navigationItem.title = category
        
        let service = Service()
         
         service.getData(category: category) { (data, success) in
            if success == true {

                    self.charViewModel = data?.map({return CharacterViewModel(data: $0)}) ?? []
                    self.tableView.reloadData()
             }
             
         }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return charViewModel.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let dataModel = charViewModel[indexPath.row]
        
        switch category {
        case "Characters":
            cell.textLabel?.text = dataModel.name
        case "Episodes":
            cell.textLabel?.text = String(describing: dataModel.episode_id)
        case "Quotes":
            cell.textLabel?.text = String(describing: dataModel.episode_id)
        default:
            break
        }
                
        return cell
        
    }
    
}
