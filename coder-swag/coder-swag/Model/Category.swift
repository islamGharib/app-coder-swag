//
//  Category.swift
//  coder-swag
//
//  Created by Islam Gharib on 2/14/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import Foundation

struct Category {
    
    // private for setting and public for getting
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
