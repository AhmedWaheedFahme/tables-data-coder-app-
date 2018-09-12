//
//  productsVC.swift
//  coder
//
//  Created by Ahmed Waheed on 8/13/18.
//  Copyright © 2018 Ahmed Waheed. All rights reserved.
//

import UIKit

class productsVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    
    @IBOutlet weak var ProductCollection:UICollectionView!
    
    private (set) public var products = [product]()
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProductCollection.dataSource = self
        ProductCollection.delegate = self

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell {
        
       
        
                let product = products[indexPath.row]
                cell.updateViews(product: product)
                return cell
            }
            return CollectionViewCell()
       
    }
    func initProducts(category:Category){
    products = DataService.instance.getProducts(forCategoryTitle:category.title)
        navigationItem.title = category.title
        
    }
}
