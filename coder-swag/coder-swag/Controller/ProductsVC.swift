//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Islam Gharib on 3/26/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollectionView.dataSource = self
        productsCollectionView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func initialProduct(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        // display navigation item
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
}
