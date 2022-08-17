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
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "sesac_slime1")
        return view
    }()
    
    let backgroundCoverView: UIView = {
        let view = UIView()
        // 검은색 조금 투명한 배경색 설정 - 확인 후 코드 별도로 정리해두자
        view.backgroundColor = UIColor.black.withAlphaComponent(0.45)
        view.isOpaque = false
        
        return view
    }()
    
    let dismissButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.dismiss.rawValue), for: .normal)
        return view
    }()
    
    let presentButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.present.rawValue), for: .normal)
        return view
    }()
    
    let qrButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.qrcode.rawValue), for: .normal)
        return view
    }()
    
    let settingButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.setting.rawValue), for: .normal)
        return view
    }()
    
    let chatButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.chat.rawValue), for: .normal)
        return view
    }()
    
    let editButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.edit.rawValue), for: .normal)
        return view
    }()
    
    let storyButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.story.rawValue), for: .normal)
        return view
    }()
    
    let profileImage: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.layer.cornerRadius = 40
        view.layer.masksToBounds = true
        view.image = UIImage(named: "thumbsup")
        return view
    }()
    
    let nameLabel: UILabel = {
        let view = UILabel()
        view.text = "Emily"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 16)
        return view
    }()
    
    let statusLabel: UILabel = {
        let view = UILabel()
        view.text = "iOS 개발자가 될거야~"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 12)
        return view
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let chatLabel: UILabel = {
        let view = UILabel()
        view.text = "나와의 채팅"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 12)
        return view
    }()
    
    let editLabel: UILabel = {
        let view = UILabel()
        view.text = "프로필 편집"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 12)
        return view
    }()

    let storyLabel: UILabel = {
        let view = UILabel()
        view.text = "카카오스토리"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 12)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()

        [dismissButton, presentButton, qrButton, settingButton, chatButton, editButton, storyButton].forEach {
            $0.configuration = .kakaoButtonStyle()
        }
    }
    

    func configureUI() {
        // 루트뷰위에 올려
        [backgroundImage, backgroundCoverView].forEach {
            view.addSubview($0)
        }
        
        // 프로필 배경사진
        backgroundImage.snp.makeConstraints { make in
//            make.edges.equalTo(view.safeAreaLayoutGuide) // top, bottom쪽에 safearea 공간이 빈다
            make.edges.equalToSuperview() // safearea없이 꽉 참
        }
        
        // 배경사진 커버뷰
        backgroundCoverView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        // 커버뷰위에 다 올려
        [dismissButton, presentButton, qrButton, settingButton, nameLabel, statusLabel, lineView, chatButton, editButton, storyButton, chatLabel, editLabel, storyLabel].forEach {
            backgroundCoverView.addSubview($0)
        }
        
        // 닫기 버튼
        dismissButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.leadingMargin.equalTo(20)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        // 설정 버튼
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailingMargin.equalTo(-20)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        // QR 버튼
        qrButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(settingButton.snp.leading).offset(-16)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        // 선물 버튼
        presentButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(qrButton.snp.leading).offset(-16)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        // 프로필 사진
        backgroundCoverView.addSubview(profileImage)
        
        profileImage.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(view).multipliedBy(1.2)
            make.width.equalTo(view).multipliedBy(0.25)
            make.height.equalTo(100)
        }
        
        // 프로필 이름
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(profileImage.snp.bottom).offset(16)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
        
        // 프로필 상태
        statusLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.width.equalTo(200)
            make.height.equalTo(20)
        }
        
        // 구분선
        lineView.snp.makeConstraints { make in
            make.top.equalTo(statusLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(0.5)
        }
        
        // 편집 버튼
        editButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(lineView.snp.bottom).offset(20)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        // 편집 라벨
        editLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(editButton.snp.bottom).offset(4)
            make.width.equalTo(80)
        }
        
        
        // 채팅버튼
        chatButton.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(20)
            make.trailing.equalTo(editButton.snp.leading).offset(-30)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        // 채팅라벨
        chatLabel.snp.makeConstraints { make in
            make.centerX.equalTo(chatButton)
            make.top.equalTo(chatButton.snp.bottom).offset(4)
            make.width.equalTo(80)
        }
        
        // 스토리 버튼
        storyButton.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(20)
            make.leading.equalTo(editButton.snp.trailing).offset(30)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        // 스토리 라벨
        storyLabel.snp.makeConstraints { make in
            make.centerX.equalTo(storyButton)
            make.top.equalTo(storyButton.snp.bottom).offset(4)
            make.width.equalTo(80)
        }
        
        
        
    }
    

}
