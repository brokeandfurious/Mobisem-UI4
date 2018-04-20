//
//  SectionHeaderView.swift
//  Mobisem-UI4
//
//  Created by mkolcalar on 19.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit

@IBDesignable class SectionHeaderView : UICollectionReusableView {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var sectionLabel: UILabel!
    
    var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UICollectionReusableView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "SectionHeaderView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UICollectionReusableView
        
        return view
    }
    
}
