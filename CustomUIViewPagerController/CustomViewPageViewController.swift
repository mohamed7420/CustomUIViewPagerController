//
//  CustomViewPageViewController.swift
//  CustomUIViewPagerController
//
//  Created by Mohamed on 8/27/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class CustomViewPageViewController: UIPageViewController {

    let pageControll:UIPageControl = {
        
        let pageControll = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY, width: UIScreen.main.bounds.width, height: 50))
        pageControll.numberOfPages = 4
        
        pageControll.currentPage = 0
        pageControll.currentPageIndicatorTintColor = .blue
        pageControll.pageIndicatorTintColor = .red
        return pageControll
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        view.backgroundColor = .white
        view.addSubview(pageControll)
        setViewControllers([ViewController()], direction: .forward, animated: true, completion: nil)
        
       
    }

}



extension CustomViewPageViewController : UIPageViewControllerDelegate , UIPageViewControllerDataSource {
    
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        return ViewController()
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        return SecondViewPage()
    }
    
    
    
    
    
}
