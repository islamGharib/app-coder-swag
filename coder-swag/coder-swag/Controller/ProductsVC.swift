//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Islam Gharib on 3/26/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initialProduct(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }

}
