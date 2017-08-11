//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Alii Shareef on 8/11/17.
//  Copyright © 2017 Alii Shareef. All rights reserved.
//

import UIKit
@IBDesignable
class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
