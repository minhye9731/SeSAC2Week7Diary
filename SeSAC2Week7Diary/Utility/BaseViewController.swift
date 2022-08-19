//
//  BaseViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit
import Toast


class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setConstraints()
    }
    
    func configure() { }
    
    func setConstraints() { }
    
    func showToastMessage(_ message: String) {
        self.view.makeToast(message, position: .center)
    }
    
}
