//
//  Model.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation

struct Items: Decodable {
//    Characters
    var char_id: Int?
    var name: String?
    var birthday: String?
    var occupation: [String]?
    var img: String?
    var status: String?
    var appearance: [Int]?
    var nickname: String?
    var portrayed: String?
//    Episodes
    var episode_id: Int?
    var title: String?
    var season: String?
    var episode: String?
    var air_date: String?
    var characters: [String]?
//    Quotes
    var quote_id: Int?
    var quote: String?
    var author: String?

}
