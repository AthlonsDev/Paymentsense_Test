//
//  ImageProcessor.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class ImageProcessor {
    
    
    func processImage(image: String, completion: @escaping (UIImage?)->()){

        if let url = URL(string: image) {
    
                      URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
    
    
                          if error != nil {
    
                            print(error?.localizedDescription as Any)
    
                          }
                          DispatchQueue.main.async {
                              if data != nil {
    
                                  if let proImage = UIImage(data: data!){
    
                                    completion(proImage)
    
                                  }
                              } else {
    
                              }
                          }
    
                }).resume()
            }
    }
    
    
}
