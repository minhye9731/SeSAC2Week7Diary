//
//  FirstViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!

    @IBOutlet weak var sizeChangeImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorialLabel.numberOfLines = 0
        tutorialLabel.alpha = 0 // 투명할것임
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.backgroundColor = .red
        tutorialLabel.text = """
        일기 씁시다!
        잘 써봅시다!
        """
        
        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        sizeChangeImageView.image = UIImage(systemName: "heart.fill")
        sizeChangeImageView.tintColor = .systemPink
        
        UIView.animate(withDuration: 3) {
            self.tutorialLabel.alpha = 1
            self.tutorialLabel.backgroundColor = .yellow
        } completion: { _ in
            self.animateBlackView()
            print("Complete")
        }
        
    }
    
    func animateBlackView() {
        UIView.animate(withDuration: 2) {
            self.blackView.transform = CGAffineTransform(scaleX: 3, y: 1)
            self.blackView.alpha = 1
            
        } completion: { _ in
            self.animageImageView()
        }

    }
    
    func animageImageView() {
        
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            self.sizeChangeImageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }

    }

}
