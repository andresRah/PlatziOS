//
//  Shadow.swift
//  PlatziFinanzas
//
//  Created by Andres Leonardo Arevalo on 1/5/19.
//  Copyright © 2019 Andres Leonardo Arevalo. All rights reserved.
//

import UIKit

extension UIView {
    var borderUIColor: UIColor {
        get {
            guard let color = layer.borderColor else {
                return UIColor.black
            }
            return UIColor(cgColor: color)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}
