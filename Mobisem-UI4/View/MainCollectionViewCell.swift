//
//  MainCollectionViewCell.swift
//  Mobisem-UI4
//
//  Created by mkolcalar on 19.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    
    
    var product: Product? {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        self.productImageView.image = product?.featuredImage
        self.productTitleLabel.text = product?.title
    }
    
}
