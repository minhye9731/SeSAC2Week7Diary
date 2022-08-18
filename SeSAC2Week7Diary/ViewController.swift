//
//  ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit
import SeSAC2UIFramework
import SnapKit

class ViewController: UIViewController {
    
    let nameButton: UIButton = {
        let view = UIButton()
        view.setTitle("닉네임", for: .normal)
        view.backgroundColor = .black
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
        nameButton.addTarget(self, action: #selector(nameButtonClicked), for: .touchUpInside)
    }
    
    @objc func nameButtonClicked() {
        
        let vc = ProfileViewController()
        
        vc.saveButtonActionHandler = {
            // 여기서 nameButton은 여기 뷰컨에 있는 애라서 바로 쓸 수 있음.
            self.nameButton.setTitle(vc.nameTextField.text, for: .normal)
        }
        
        present(ProfileViewController(), animated: true)
    }
    
    func configure() {
        view.addSubview(nameButton)
        
        nameButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
    }

}











