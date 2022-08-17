//
//  CodeKakaoViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/17/22.
//

import UIKit
import SnapKit

class CodeKakaoViewController: UIViewController {
    
    let backgroundImage: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.image = UIImage(named: "paperTextureBackground")
        return view
    }()
    
    let backgroundCoverView: UIView = {
        let view = UIView()
        // 검은색 조금 투명한 배경색 설정 - 확인 후 코드 별도로 정리해두자
        view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        view.isOpaque = false
        
        return view
    }()
    
    let presentButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "star.fill"), for: .normal)

        return view
    }()
    
    let qrButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "star.fill"), for: .normal)
        
        return view
    }()
    
    let settingButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "star.fill"), for: .normal)
        
        return view
    }()
    
    let chatButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "star.fill"), for: .normal)
        
        return view
    }()
    
    let editButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "star.fill"), for: .normal)
        
        return view
    }()
    
    let storyButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "star.fill"), for: .normal)
        
        return view
    }()
    
    let profileImage: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.image = UIImage(named: "sesac_slime1")
        return view
    }()
    
    let nameLabel: UILabel = {
        let view = UILabel()
        view.text = "Emily"
        view.textColor = .white
        view.font = .boldSystemFont(ofSize: 16)
        return view
    }()
    
    let statusLabel: UILabel = {
        let view = UILabel()
        view.text = "iOS 개발자가 될거야~"
        view.textColor = .white
        view.font = .systemFont(ofSize: 12)
        return view
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        // 도형 height 1로 설정하는 것은 아래 snapkit활용해서 적용 예정
        return view
    }()
    
    let chatLabel: UILabel = {
        let view = UILabel()
        view.text = "나와의 채팅"
        view.textColor = .white
        view.font = .systemFont(ofSize: 10)
        return view
    }()
    
    let editLabel: UILabel = {
        let view = UILabel()
        view.text = "프로필 편집"
        view.textColor = .white
        view.font = .systemFont(ofSize: 10)
        return view
    }()

    let storyLabel: UILabel = {
        let view = UILabel()
        view.text = "카카오스토리"
        view.textColor = .white
        view.font = .systemFont(ofSize: 10)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    

    func configureUI() {
        
        [backgroundImage, backgroundCoverView, presentButton, qrButton, settingButton, chatButton, editButton, storyButton, profileImage, profileImage, nameLabel, statusLabel, chatLabel, editLabel, storyLabel].forEach {
            view.addSubview($0)
        }
        
        
        
        
    }
    

}
