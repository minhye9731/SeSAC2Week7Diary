//
//  UIViewController+Extension.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/18/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    func transitionViewController<T: UIViewController>(storyboard: String, viewController vc: T) {
        
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        guard let controller = sb.instantiateViewController(withIdentifier: String(describing: vc)) as? T else { return }
        
        self.present(controller, animated: true)
    }
}



