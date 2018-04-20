//
//  Product.swift
//  Mobisem-UI4
//
//  Created by mkolcalar on 19.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit

class Product {
    // MARK - API
    var title = ""
    var price = ""
    var description = ""
    var featuredImage: UIImage!
    
    init(title: String, price: String, description: String, featuredImage: UIImage) {
        self.title = title
        self.price = price
        self.description = description
        self.featuredImage = featuredImage
    }
    
    // MARK - Private
    
    static func createProduct() -> [Product] {
        return [
            Product(title: "Study Room", price: "$1290", description: "Stylish. Expensive.", featuredImage: UIImage(named: "studyroom")!),
            Product(title: "Stylish Chair", price: "$430", description: "Stylish. Expensive.", featuredImage: UIImage(named: "chair")!),
            Product(title: "Closet", price: "$420", description: "Basic. Cheap.", featuredImage: UIImage(named: "closet")!),
            Product(title: "Woven Armchair", price: "$2975", description: "Stylish. Expensive.", featuredImage: UIImage(named: "armchair")!),
            Product(title: "Desk Lamp", price: "$120", description: "Stylish. Cheap.", featuredImage: UIImage(named: "lamp")!)
        ]
    }
}

