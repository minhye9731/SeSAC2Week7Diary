//
//  WalkThroughViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 강민혜 on 8/16/22.
//

import UIKit

class WalkThroughViewController: UIPageViewController {
    
    // 배열 형태로 뷰컨트롤러를 추가
    var pageViewControllerList: [UIViewController] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        createPageViewController() // 이거를 먼저해야 list배열에 뷰컨 3개가 담긴다
        configurePageViewController()
        
    }
    
    // 배열에 뷰컨트롤러 추가
    func createPageViewController() {
        let sb = UIStoryboard(name: "WalkThrough", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: FirstViewController.reuseIdentifier) as! FirstViewController
        let vc2 = sb.instantiateViewController(withIdentifier: SecondViewController.reuseIdentifier) as! SecondViewController
        let vc3 = sb.instantiateViewController(withIdentifier: ThirdViewController.reuseIdentifier) as! ThirdViewController
        pageViewControllerList = [vc1, vc2, vc3]
    }
    
    func configurePageViewController() {
        delegate = self
        dataSource = self
        
        //display
        guard let first = pageViewControllerList.first else { return }
        setViewControllers([first], direction: .forward, animated: true)
    }
    
    
    
    
}


extension WalkThroughViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        // 현재 페이지뷰컨트롤러에 보이는 뷰컨(viewController)의 인덱스 가져오기

        guard let viewControllerIndex = pageViewControllerList.firstIndex(of: viewController) else { return nil }
        
        let previousIndex = viewControllerIndex - 1 // 뷰컨 3이오면 2가오고, 2가오면 1이 오고
        
        return previousIndex < 0 ? nil : pageViewControllerList[previousIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pageViewControllerList.firstIndex(of: viewController) else { return nil }
        
        let nextIndex = viewControllerIndex + 1 // 뷰컨 3이오면 2가오고, 2가오면 1이 오고
        
        return nextIndex >= pageViewControllerList.count ? nil : pageViewControllerList[nextIndex]
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pageViewControllerList.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        // 디스플레이된 뷰컨을 first에 담고, 해당 뷰컨의 인덱스를 가져온다
        guard let first = viewControllers?.first, let index = pageViewControllerList.firstIndex(of: first) else { return 0 }
        print("===", index)
        return index
    }
    
}
