//
//  categoriesVC.swift
//  coder
//
//  Created by Ahmed Waheed on 8/10/18.
//  Copyright © 2018 Ahmed Waheed. All rights reserved.
//

import UIKit

class categoriesVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    
    @IBOutlet weak var categoryTable:UITableView! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
}

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as?
        categoryCell {
       
        let categories = DataService.instance.getCategories()
        let category = categories[indexPath.row]
        cell.updateViews(categ: category)
        return cell
        }
    else {  return categoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "productsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let ProductsVC = segue.destination as? productsVC {
            
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
        ProductsVC.initProducts(category: sender as! Category)
            
        }
    }
}



