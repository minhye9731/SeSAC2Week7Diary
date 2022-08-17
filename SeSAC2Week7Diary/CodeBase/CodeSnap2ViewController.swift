//
//  CodeSnap2ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/17/22.
//

import UIKit
import SnapKit

class CodeSnap2ViewController: UIViewController {
    
    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        [redView, blackView].forEach {
            view.addSubview($0)
        }
        
        // yellow는 red, black과 같은선상에 있지 않다.
        redView.addSubview(yellowView)
        
        // containerView, stackView는 추가하는게 또다름 => 알아보기 과제
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        blackView.snp.makeConstraints { make in
            make.edges.equalTo(redView).inset(50)// offset(50) // 4가지 모서리를 그대로 가져온다
        }
        
    }
    

    

}
