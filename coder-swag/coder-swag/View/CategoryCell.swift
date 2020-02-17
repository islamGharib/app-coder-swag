//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Islam Gharib on 2/8/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
