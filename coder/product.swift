//
//  product.swift
//  coder
//
//  Created by Ahmed Waheed on 8/13/18.
//  Copyright © 2018 Ahmed Waheed. All rights reserved.
// we make a swift file to display the product 


import Foundation

struct product {

    private (set) public var title : String
    private (set) public var price : String
    private (set) public var imageName : String
    
    init(title:String , price:String , imageName:String) {
        self.title = title
        self.price = price
        self.imageName = imageName
        
    }
}
