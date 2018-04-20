//
//  Categories.swift
//  Mobisem-UI4
//
//  Created by mkolcalar on 19.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit

class Categories {
    // MARK - API
    var title = ""
    var color = ""
    
    init(title: String, color: String) {
        self.title = title
        self.color = color
    }
    
    // MARK - Private
    
    static func createCategory() -> [Categories] {
        return [
            Categories(title: "Clothes", color: "red"),
            Categories(title: "Appliances", color: "white"),
            Categories(title: "Electronics", color: "blue"),
            Categories(title: "Accessories", color: "purple")
        ]
    }
}
