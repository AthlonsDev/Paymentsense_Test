//
//  Service.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation


class Service {

    
    func getData(category: String, completion: @escaping([Characters]?, Bool) -> ()) {
        
        
        let serverAddress = String(format: "https://www.breakingbadapi.com/api/\(category)")
        print(serverAddress)
        guard serverAddress.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) != nil else {return}
                                        
                let url = serverAddress.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
                let finalUrl = URL(string: url!)
                let request = NSMutableURLRequest(url: finalUrl!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
                    request.httpMethod = "GET"
        

                let session = URLSession.shared
                
                let datatask = session.dataTask(with: request as URLRequest) { (data, response, error) in
                    
                     guard let data = data else {
                                   
                        return
                                   
                        
                        
                    }
                                        
                    do {
                        
                        let jsonData = try JSONDecoder().decode([Characters].self, from: data)
                        
                        let items = jsonData
                        
                        print(items)
                                        
                         DispatchQueue.main.async {
                               
                            completion(jsonData, true)
         
                        }
                        
                    }
                    
                    catch let error as NSError {
                        print(error)
                    }
                    
                }
                datatask.resume()

    }
    
    
}
