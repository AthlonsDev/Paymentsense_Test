//
//  SecondTableView.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class SecondTableView: UITableViewController, UISearchBarDelegate {
    
    
    
    let cellID = "cellID"
    var charViewModel = [ItemsViewModel]()
    var category = String()
    var id = Int()
    
    override func viewDidLoad() {
        
        tableView.register(BaseCell.self, forCellReuseIdentifier: cellID)
        tableView.rowHeight = 80
        

        getData()
    }
    
//    TODO: Add a UISearchBar to filter out results (like quotes by name)
    
    
    func getData() {
        
        navigationItem.title = category
        
       let vm = ItemsViewModel(data: Items())
        
        vm.getData(category: category) { (data, success) in
            if success {
                  self.charViewModel = data?.map({return ItemsViewModel(data: $0)}) ?? []
                  self.tableView.reloadData()
            }
        }
        
    }

    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        
        queryData(query: searchBar.text!)
        
    }
    
    func queryData(query: String) {
          
          navigationItem.title = category
          
          let service = Service()
           
           service.getData(category: "\(category)?author=\(query)") { (data, success) in
              if success == true {

                      self.charViewModel = data?.map({return ItemsViewModel(data: $0)}) ?? []
                      self.tableView.reloadData()
               }
               
           }
          
      }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return charViewModel.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        
        
        switch category {
        case "Characters":
            let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! BaseCell

            let dataModel = charViewModel[indexPath.row]
            cell.dvmChar = dataModel
            cell.id = dataModel.char_id
            return cell
            
        case "Episodes":
            let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! BaseCell

            let dataModel = charViewModel[indexPath.row]
            cell.dvmEp = dataModel
            cell.id = dataModel.episode_id
            return cell
            
        case "Quotes":
            let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! BaseCell

            let dataModel = charViewModel[indexPath.row]
            cell.dvmQ = dataModel
            cell.id = dataModel.quote_id!
            return cell
            
        default:
//            This will never get Called
            let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! BaseCell
            return cell
            
        }
 
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        let selectedCell = tableView.cellForRow(at: indexPath) as! BaseCell
        
        id = selectedCell.id

        performSegue(withIdentifier: "goToDetails", sender: self)
 
     }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination as! DetailViewController
        
            destination.category = category
            destination.id = id
        
        
    }
    
}
