//
//  category.swift
//  coder
//
//  Created by Ahmed Waheed on 8/11/18.
//  Copyright © 2018 Ahmed Waheed. All rights reserved.
//

import Foundation

struct Category  {
    
    private(set) public var title : String
    private(set) public var imageName : String
    
    init(title:String , imageName:String) {
        self.title = title
        self.imageName = imageName
    
    }
}
