//
//  SecondViewModel.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class ItemsViewModel {
    
    var char_id: Int
    var name: String
    var birthday: String
    var occupation: [String]
    var img: String
    var status: String
    var appearance: [Int]
    var nickname: String
    var portrayed: String
    var episode_id: Int
    var title: String
    var season: String
    var episode: String
    var air_date: String
    var characters: [String]
    var quote_id: Int?
    var quote: String?
    var author: String?

    init(data: Items) {
        
        
        char_id = data.char_id ?? 0
        name = data.name ?? "no value found"
        birthday = data.birthday ?? ""
        occupation = data.occupation ?? [""]
        img = data.img ?? ""
        status = data.status ?? ""
        appearance = data.appearance ?? [0]
        nickname = data.nickname ?? ""
        portrayed = data.portrayed ?? ""
        episode_id = data.episode_id ?? 0
        title = data.title ?? ""
        season = data.season ?? ""
        episode = data.episode ?? ""
        air_date = data.air_date ?? ""
        characters = data.characters ?? [""]
        quote_id = data.quote_id ?? 0
        quote = data.quote ?? ""
        author = data.author ?? ""
        
    }
    
    
    func processImages(imageString: String, completion: @escaping (UIImage) -> ()) -> Void {
        
        let imageProcessor = ImageProcessor()
        
        imageProcessor.processImage(image: imageString) { (image) in
            
            completion(image!)
            

        }
        
    }
    
    func getData(category: String, completion: @escaping([Items]?, Bool) -> ()) {
        let service = Service()
               
               service.getData(category: category) { (data, success) in
                  if success {

                        completion(data, true)

                   }
                   
               }
    }
}
