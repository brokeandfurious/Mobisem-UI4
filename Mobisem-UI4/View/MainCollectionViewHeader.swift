//
//  MainCollectionViewHeader.swift
//  Mobisem-UI4
//
//  Created by mkolcalar on 19.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit
import Foundation

class MainCollectionViewHeader: UICollectionReusableView {
    
    // VIEWS    
    @IBOutlet weak var scrollView: UIScrollView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        arrangeScrollView()

    }
    
    func arrangeScrollView() {
        var previousAnchor = scrollView.leadingAnchor
        
        for _ in 0...5 {
            let categoryItemView = UIView()
            categoryItemView.translatesAutoresizingMaskIntoConstraints = false
            categoryItemView.backgroundColor = Singleton.pinkShadeColor
            arrangeShadowsAndCorners(view: categoryItemView)
            scrollView.addSubview(categoryItemView)
            
            NSLayoutConstraint.activate([
                categoryItemView.leadingAnchor.constraint(equalTo: previousAnchor, constant: 10.0),
                categoryItemView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 0.8, constant: 1),
                categoryItemView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.35, constant: 1),
                categoryItemView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor)
                ])
            
            previousAnchor = categoryItemView.trailingAnchor
            
        }
        
        previousAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 10).isActive = true
        
        scrollView.isDirectionalLockEnabled = true
        scrollView.delegate = self as? UIScrollViewDelegate
        scrollView.alwaysBounceHorizontal = true
        
    }
    
    func arrangeShadowsAndCorners(view: UIView) {
        // CORNERS
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 15.0).cgPath
        
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = false
        view.clipsToBounds = false
        // SHADOWS
        let shadowLayer = CALayer()
        shadowLayer.shadowPath = UIBezierPath(roundedRect: view.layer.bounds, cornerRadius: 10.0).cgPath
        shadowLayer.shadowRadius = 5.0
        shadowLayer.shadowColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(shadowLayer)
        // LAYER
        let viewLayer = CALayer()
        viewLayer.mask = maskLayer
        viewLayer.frame = bounds
        viewLayer.contentsGravity = kCAGravityResizeAspectFill
        view.layer.addSublayer(viewLayer)
    }

}
