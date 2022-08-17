//
//  CodeDeliverViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/17/22.
//

import UIKit
import SnapKit

class CodeDeliverViewController: UIViewController {
    
    // MARK: - uiview
    let naviView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 96/255, green: 190/255, blue: 188/255, alpha: 1)
        view.roundCorners(cornerRadius: 20, maskedCorners: [.layerMinXMaxYCorner, .layerMaxXMaxYCorner])
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.systemGray5.cgColor
        view.clipsToBounds = true
        return view
    }()
    
    let searchBackgruondView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let grayLineFirstView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let grayLineSecondView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let grayLineThirdView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    // MARK: - 텍스트필드
    let searchTextField: UITextField = {
        let view = UITextField()
        view.backgroundColor = .clear
        view.textColor = .black
        view.autocorrectionType = .no
        view.spellCheckingType = .no
        view.keyboardType = .default
        view.clearsOnBeginEditing = true
        view.attributedPlaceholder = NSAttributedString(string: "포케? 돈까스? 커리?", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        view.borderStyle = .none
        return view
    }()
    
    // MARK: - 버튼
    let squareButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.dismiss.rawValue), for: .normal)
        return view
    }()
    
    let downButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.dismiss.rawValue), for: .normal)
        return view
    }()
    
    let bellButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.dismiss.rawValue), for: .normal)
        return view
    }()
    
    let smileButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.dismiss.rawValue), for: .normal)
        return view
    }()
    
    let pointButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.dismiss.rawValue), for: .normal)
        return view
    }()
    
    let couponButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.dismiss.rawValue), for: .normal)
        return view
    }()
    
    let presentButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.dismiss.rawValue), for: .normal)
        return view
    }()
    
    let likeButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: Constant.ImageName.dismiss.rawValue), for: .normal)
        return view
    }()
    
    // MARK: - 라벨
    
    let locationLabel: UILabel = {
        let view = UILabel()
        view.text = "회사"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 16)
        return view
    }()
    
    // MARK: - 메인화면 섹션 버튼들
    let deliveryButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "image1"), for: .normal)
        return view
    }()
    
    let baeminOneButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "image2"), for: .normal)
        return view
    }()
    
    let packagingButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "image3"), for: .normal)
        return view
    }()
    
    let bMartButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "image4"), for: .normal)
        return view
    }()
    
    let shoppingLiveButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "image5"), for: .normal)
        return view
    }()
    
    let goPresentButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "image6"), for: .normal)
        return view
    }()
    
    let jmtButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "image7"), for: .normal)
        return view
    }()
    
    // MARK: - image
    let searchIconView: UIImageView = {
        let view = UIImageView()
        
        return view
    }()
    
    let adImageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()

    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sectionUI()
        configureUI()

    }
    
    func sectionUI() {
        
        [deliveryButton, baeminOneButton, packagingButton, bMartButton, shoppingLiveButton, goPresentButton, jmtButton].forEach {
            $0.layer.borderWidth = 1
            $0.layer.borderColor = UIColor.systemGray5.cgColor
            $0.contentMode = .scaleAspectFill
            $0.layer.cornerRadius = 12
            $0.clipsToBounds = true
        }
        
    }
    
    func configureUI() {
        
        [naviView, deliveryButton, baeminOneButton, packagingButton, bMartButton, shoppingLiveButton, goPresentButton, jmtButton, adImageView, pointButton, grayLineFirstView, couponButton, grayLineSecondView, presentButton, grayLineThirdView, likeButton].forEach {
            view.addSubview($0)
        }
        
        [squareButton, locationLabel, downButton, bellButton, smileButton, searchBackgruondView, searchIconView, searchTextField].forEach {
            naviView.addSubview($0)
        }
        
        // 네비
        naviView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(view).multipliedBy(0.2)
        }
        
        let width = view.frame.width - 60
        
        // 배달 섹션
        deliveryButton.snp.makeConstraints { make in
            make.top.equalTo(naviView.snp.bottom).offset(20)
            make.width.equalTo(width / 2)
            make.height.equalTo(width / 2)
            make.leading.equalToSuperview().offset(20)
        }
        
        // q배민 섹션
        baeminOneButton.snp.makeConstraints { make in
            make.top.equalTo(naviView.snp.bottom).offset(20)
            make.width.equalTo(width / 2)
            make.height.equalTo(width / 2)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        // 포장 섹션
        packagingButton.snp.makeConstraints { make in
            make.top.equalTo(deliveryButton.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(95)
        }
        
        
        
        
    }
    

    

}
