//
//  BaseView.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/19/22.
//

import UIKit
import SnapKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        setConstraints()
    }
    
    // xib storyboard, protocol
    required init?(coder: NSCoder) {
        // 아래꺼 지우고 이거 하나만 써도 됨
        super.init(coder: coder)
        
        configureUI()
        setConstraints()
        
        // 스토리보드상에서 뭔가 작업을 할 때면 아래 fatalerror 문구 삭제해야함. 왜냐면 required init 이게 실행될 것이기 때문
//        fatalError("init(coder:) has not been implemented") // 런타임 오류
    }
    
    func configureUI() { }
    
    func setConstraints() { }
    
}


//required initializer

protocol ExampleProtocol {
    init(name: String)
}


class Mobile: ExampleProtocol {
    
    let name: String

    required init(name: String) {
        self.name = name
        print("Mobile Init")
    }
}


class Apple: Mobile {
    
    let wwdc: String

    required init(name: String) {
        self.wwdc = "WWDC22"

        super.init(name: name)
        print("Apple Init")
    }

}

let a = Apple(name: "애플")


