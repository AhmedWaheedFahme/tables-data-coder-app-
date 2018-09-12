//
//  categoryCell.swift
//  coder
//
//  Created by Ahmed Waheed on 8/10/18.
//  Copyright © 2018 Ahmed Waheed. All rights reserved.
//  we make it to table view cell and call image and title
//  main VC 
//  cocoa.file

import UIKit

class categoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryLbl : UILabel!
    
    func updateViews(categ:Category){
        categoryImage.image = UIImage(named:categ.imageName)
        categoryLbl.text = categ.title
        
    	}
}


