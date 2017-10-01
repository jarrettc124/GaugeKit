//
//  UIColor+Blend.swift
//  SWGauge
//
//  Created by David Pelletier on 2015-03-06.
//  Copyright (c) 2015 Petr Korolev. All rights reserved.
//

import UIKit

func + (left: UIColor, right: UIColor) -> UIColor {
    var leftRGBA = [CGFloat](repeating: 0.0, count: 4)
    var rightRGBA = [CGFloat](repeating: 0.0, count: 4)
    
    var leftRGBA1 = leftRGBA[0]
    var leftRGBA2 = leftRGBA[1]
    var leftRGBA3 = leftRGBA[2]
    var leftRGBA4 = leftRGBA[3]

    var rightRGBA1 = rightRGBA[0]
    var rightRGBA2 = rightRGBA[1]
    var rightRGBA3 = rightRGBA[2]
    var rightRGBA4 = rightRGBA[3]
    
    left.getRed(&leftRGBA1, green: &leftRGBA2, blue: &leftRGBA3, alpha: &leftRGBA4)
    right.getRed(&rightRGBA1, green: &rightRGBA2, blue: &rightRGBA3, alpha: &rightRGBA4)
    
    return UIColor(
        red: max(leftRGBA[0], rightRGBA[0]),
        green: max(leftRGBA[1], rightRGBA[1]),
        blue: max(leftRGBA[2], rightRGBA[2]),
        alpha: max(leftRGBA[3], rightRGBA[3])
    )
}

func * (left: CGFloat, right: UIColor) -> UIColor {
    var rightRGBA = [CGFloat](repeating: 0.0, count: 4)
    
    var rightRGBA1 = rightRGBA[0]
    var rightRGBA2 = rightRGBA[1]
    var rightRGBA3 = rightRGBA[2]
    var rightRGBA4 = rightRGBA[3]
    
    right.getRed(&rightRGBA1, green: &rightRGBA2, blue: &rightRGBA3, alpha: &rightRGBA4)
    
    return UIColor(
        red: rightRGBA[0] * left,
        green: rightRGBA[1] * left,
        blue: rightRGBA[2] * left,
        alpha: rightRGBA[3]
    )
}

func * (left: UIColor, right: CGFloat) -> UIColor {
    return right * left
}
