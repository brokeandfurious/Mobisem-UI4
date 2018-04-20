//
//  Singleton.swift
//  Mobisem-UI4
//
//  Created by mkolcalar on 19.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit

class Singleton {
    
    static let sharedInstance = Singleton()
    static let pinkShadeColor: UIColor = UIColor(red:0.92, green:0.24, blue:0.33, alpha:1.0)
    
    private init() {}
    
}
