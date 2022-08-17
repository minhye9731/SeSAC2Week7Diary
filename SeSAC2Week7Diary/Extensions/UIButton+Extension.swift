//
//  UIButton+Extension.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/17/22.
//

import UIKit

@available (iOS 15.0, *)
extension UIButton.Configuration {
    
    static func kakaoButtonStyle() -> UIButton.Configuration {
        var configuration = UIButton.Configuration.filled()
        configuration.baseForegroundColor = .white
        configuration.baseBackgroundColor = .clear
        configuration.buttonSize = .large
        return configuration
    }
}
