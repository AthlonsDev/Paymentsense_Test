//
//  SecondViewModel.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation

class CharacterViewModel {
    
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

    
    init(data: Characters) {
        
        
        char_id = data.char_id ?? 0
        name = data.name ?? ""
        birthday = data.birthday ?? ""
        occupation = data.occupation ?? [""]
        img = data.img ?? ""
        status = data.status ?? ""
        appearance = data.appearance ?? [0]
        nickname = data.nickname ?? ""
        portrayed = data.portrayed ?? ""
        episode_id = data.episode_id ?? 21212212

        
        
    }
    
}
