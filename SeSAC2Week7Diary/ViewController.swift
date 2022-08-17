//
//  ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit
import SeSAC2UIFramework

class ViewController: UIViewController {
    
    var name = "고래밥"
    
    private var age = 22

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        let vc = CodeSnap2ViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
        
        
        
        testOpen()
//        testPrivate() // inaccessible due to 'private' protection level
        
//        showSesacAlert(title: "테스트 얼럿", message: "테스트 메시지", buttonTitle: "변경") { _ in
//            self.view.backgroundColor = .lightGray
//        }
        
//        let image = UIImage(systemName: "star.fill")!
//        let shareURL = "https://www.apple.cpm"
//        let text = "WWDC What's New!!!"
//        sesacShowActivityViewController(shareImage: image, shareURL: shareURL, shareText: text)
        
        OpenWebView.presentWebViewController(self, url: "https://naver.com", transitionStyle: .present)
        
        
        
    }

}

