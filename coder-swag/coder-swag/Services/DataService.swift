//
//  DataService.swift
//  coder-swag
//
//  Created by Islam Gharib on 2/14/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import Foundation

class DataService {
    // singleton design pattern -> only one object for this class in memory
    static let instance = DataService()
    
    private init(){}
    
    private let categories: [Category] = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
