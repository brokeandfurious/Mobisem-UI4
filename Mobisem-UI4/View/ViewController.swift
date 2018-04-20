//
//  ViewController.swift
//  Mobisem-UI4
//
//  Created by mkolcalar on 18.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // VIEW DECLARATIONS
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    
    // VARIABLE DECLARATIONS
    var products = Product.createProduct()
    
    // BOOL DECLARATIONS
    var isCellEnlarged: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if products.count != 0 {
            return products.count
        } else {
            print("! - products array is empty - !")
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as! MainCollectionViewCell
        
        let p = indexPath.row
        cell.product = self.products[p]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell: MainCollectionViewCell? = collectionView.cellForItem(at: indexPath) as? MainCollectionViewCell
        
        let enlargeAnimation = UIViewPropertyAnimator(duration: 0.25, curve: .easeIn) { cell?.transform = CGAffineTransform(scaleX: 1.2, y: 1.2) }
        enlargeAnimation.startAnimation()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell: MainCollectionViewCell? = collectionView.cellForItem(at: indexPath) as? MainCollectionViewCell
        let shrinkAnimation = UIViewPropertyAnimator(duration: 0.25, curve: .easeIn) { cell?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0) }
        shrinkAnimation.startAnimation()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        if (section == 0) {
            return CGSize(width: self.view.bounds.width, height: self.view.bounds.height / 4)
        } else {
            return CGSize(width: self.view.bounds.width, height: self.view.bounds.height / 7)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if (indexPath.section) == 0 {
            return collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "MainCollectionViewHeader", for: indexPath)
        } else {
            collectionView.register(SectionHeaderView.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: "SectionHeaderView")
            return collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SectionHeaderView", for: indexPath)
        }

        return collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "MainCollectionViewHeader", for: indexPath)
        
    }
    
}


