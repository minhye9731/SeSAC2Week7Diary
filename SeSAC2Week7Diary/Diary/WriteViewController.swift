//
//  WriteViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit
import SnapKit
import Toast

class WriteViewController: BaseViewController {
    
    var mainView = WriteView() // 인스턴스 먼저 만든다.
    
    //viewDidLoad보다 먼저 호출
    override func loadView() { // super.loadView X
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // BaseViewController
    override func configure() {
        mainView.titleTextField.addTarget(self, action: #selector(titleTextFieldClicked(_:)), for: .editingDidEndOnExit)
    }
    
    @objc func titleTextFieldClicked(_ textField: UITextField) {
        guard let text = textField.text, text.count > 0 else {
            showToastMessage("제목을 입력해주세요")
            return
        }
    }
    
    override func setConstraints() {
   
        
        
    }
    
    
    
}
