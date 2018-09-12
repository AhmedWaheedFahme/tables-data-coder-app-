//
//  CollectionViewCell.swift
//  coder
//
//  Created by Ahmed Waheed on 8/11/18.
//  Copyright © 2018 Ahmed Waheed. All rights reserved.
//  we make it to identify the objects in that VC
//  we make it cocoa.file
//  second VC (products)


import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice : UILabel!

    func updateViews(product:product)
    {
    productTitle.text = product.title
        productPrice.text = product.title
        productImage.image = UIImage(named:product.imageName)
        
    }
}
