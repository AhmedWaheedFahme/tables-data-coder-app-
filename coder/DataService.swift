//
//  DataService.swift
//  coder
//
//  Created by Ahmed Waheed on 8/11/18.
//  Copyright © 2018 Ahmed Waheed. All rights reserved.
//  data source or data service 



import Foundation

class DataService {

    static let instance = DataService()
    private let categories = [
       
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    
    private let hats = [
    
        product(title: "Devslopes Logo", price: "$18", imageName: "hat01.png"),
        product(title: "Devslopes Logo bk", price: "$19", imageName: "hat02.png"),
        product(title: "Devslopes Logo wh", price: "$20", imageName: "hat03.png"),
        product(title: "Devslopes Logo Hat", price: "$21", imageName: "hat04.png")
        
    ]
    
    private let hoodies = [
    
        product(title: "Devslopes Logo Hood", price: "$25", imageName:"hoodies01.png"),
        product(title: "Devslopes Logo Hood1", price: "$33", imageName: "hoodies02.png"),
        product(title: "DEvslopes Logo Hood2", price: "$34", imageName: "hoodies03.png"),
        product(title: "Devslopes Logo Hood3", price: "$34", imageName: "hoodies04.png")
    
    ]
    
    private let shirts = [
        product(title: "Devslopes Logo sh", price: "$30", imageName: "shirt01.png"),
        product(title: "Devslopes Logo sh1", price: "$26", imageName: "shirt02.png"),
        product(title: "Devslopes Logo sh2", price: "$25", imageName: "shirt03.png"),
        product(title: "Devslopes Logo sh3", price: "$35", imageName: "shirt04.png"),
        product(title: "Devslopes Logo sh4", price: "$28", imageName: "shirt05.png")
    
    ]
    
    private let digital = [product] ()
    
    
    
    func getCategories ()->[Category] {
    return categories
    }

    func getProducts(forCategoryTitle title:String)->[product] {
        switch title {
        case "SHIRTS":
            return getShirts()
            case "DIGITAL":
            return getDigital()
            case "HOODIES":
            return getHoodies()
            case "HATS":
            return getHats()
            
        default:
            return getShirts()
        }
    
    }

    func getHats()->[product]{
    return hats
    }
    
    func getDigital()->[product] {
    return digital
    }
    func getHoodies()->[product] {
    
    return hoodies
    }
    func getShirts()->[product]{
    return shirts
    }

}
