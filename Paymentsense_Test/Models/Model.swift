//
//  Model.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation

struct Characters: Decodable {
    var char_id: Int?
    var name: String?
    var birthday: String?
    var occupation: [String]?
    var img: String?
    var status: String?
    var appearance: [Int]?
    var nickname: String?
    var portrayed: String?
    var episode_id: Int?
}
