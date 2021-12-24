//
//  Ball.swift
//  Homework022
//
//  Created by Chun-Yi Lin on 2021/12/23.
//

import Foundation
import CodableCSV
import UIKit

struct Ball: Codable {
    let Series : Int
    let Prize : Int
    let Total : Int
    let Ball1 : Int
    let Ball2 : Int
    let Ball3 : Int
    let Ball4 : Int
    let Ball5 : Int
}

extension Ball {
    static var data: [Self] {
        var array = [Self]()
        if let data = NSDataAsset(name: "539")?.data {
            let decoder = CSVDecoder {
                $0.headerStrategy = .firstLine
            }
            do {
                array = try decoder.decode([Self].self, from: data)
            } catch {
                print(error)
            }
        }
        return array
    }
}
