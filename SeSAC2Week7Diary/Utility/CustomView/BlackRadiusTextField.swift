//
//  BlackRadiusTextField.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit

class BlackRadiusTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.backgroundColor = .clear
        self.textAlignment = .center
        self.borderStyle = .none
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.font = .boldSystemFont(ofSize: 15)
    }
    
    
}


















