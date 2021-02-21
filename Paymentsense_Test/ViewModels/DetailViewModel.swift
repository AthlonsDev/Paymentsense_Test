//
//  FirstViewModel.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class DetailViewModel {
    
    var view = DetailView()

    var mainLabel = String()
    var img = String()
    var secondaryLabel = String()
    var LabelLSideOne = String()
    var LabelLSideTwo = String()
    var LabelLSideThree = String()
    var LabelRSideOne = String()
    var LabelRSideTwo = String()
    
    
    func getData(category: String, query: String, completion: @escaping([Items]?, Bool) -> ()) {
        let service = Service()
                                
            service.getData(category: query) { (data, success) in
                
                if success {

                    switch category {
                    case "Characters":
                        
                        self.mainLabel = data![0].name!
                        self.img = data![0].img!
                        self.secondaryLabel = "AKA: \(data![0].nickname!)"
                        self.LabelLSideOne = "Portrayed by: \(data![0].portrayed!)"
                        self.LabelLSideTwo = "Status: \(data![0].status!)"
                        self.LabelLSideThree = "Born on: \(data![0].birthday!)"
                        self.LabelRSideOne = "Occupations: \(String(describing: (data![0].occupation)!.joined(separator: ", ")))"
                        
                    case "Episodes":
                        
                        self.mainLabel = data![0].title!
                        self.secondaryLabel = "Season: \(data![0].season!) Episode: \(data![0].episode!)"
                        self.LabelLSideOne = "aired In: \(data![0].air_date!)"
                        self.LabelLSideTwo = "Starring: \(String(describing: (data![0].characters)!.joined(separator: ", ")))"
                        
                    case "Quotes":
                        self.mainLabel = data![0].quote!
                        self.secondaryLabel = "By: \(data![0].author!)"
                    default:
                        break
                    }
                    completion(data, true)
                }
            }
    }
  
    func processImages(imageString: String, completion: @escaping (UIImage) -> ()) -> Void {
          
          let imageProcessor = ImageProcessor()
          
          imageProcessor.processImage(image: imageString) { (image) in
              
              completion(image!)
              

          }
          
      }
    
    
}
