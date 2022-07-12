//
//  Tip.swift
//  Trekr
//
//  Created by Lorenzo Pesci on 10/01/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
