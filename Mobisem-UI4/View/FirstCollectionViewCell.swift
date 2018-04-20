//
//  FirstCollectionViewCell.swift
//  Mobisem-UI4
//
//  Created by mkolcalar on 19.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {
    
    var product: Product? {
        didSet {
            print("I'm accessing it.")
        }
    }
    
}
