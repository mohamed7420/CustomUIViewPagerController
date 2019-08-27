//
//  SecondViewPage.swift
//  CustomUIViewPagerController
//
//  Created by Mohamed on 8/27/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class SecondViewPage : UIViewController {
    
    
    
    
    let imageView:UIImageView = {
        
        let image =  UIImageView(image: UIImage(named: "img1"))
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    
    private func makeCustomStackView(){
        
        let prevButton:UIButton = {
            
            let prev = UIButton(type: .system)
            prev.translatesAutoresizingMaskIntoConstraints = false
            prev.setTitle("PREV", for: .normal)
            prev.setTitleColor(.gray, for: .normal)
            prev.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
            return prev
        }()
        
        let nextButton:UIButton = {
            
            
            let next = UIButton(type: .system)
            next.translatesAutoresizingMaskIntoConstraints = false
            next.setTitle("NEXT", for: .normal)
            next.setTitleColor(.red, for: .normal)
            next.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
            return next
            
        }()
        
        let dots:UIPageControl = {
            let pageControll = UIPageControl()
            pageControll.translatesAutoresizingMaskIntoConstraints = false
            pageControll.currentPage = 0
            pageControll.currentPageIndicatorTintColor = .blue
            pageControll.numberOfPages = 4
            pageControll.pageIndicatorTintColor = .red
            return pageControll
        }()
        
        
        let bottomStack = UIStackView(arrangedSubviews: [prevButton , dots , nextButton ])
        
        bottomStack.translatesAutoresizingMaskIntoConstraints = false
        
        bottomStack.distribution = .fillEqually
        
        view.addSubview(bottomStack)
        
        NSLayoutConstraint.activate([
            
            bottomStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor) ,
            
            bottomStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor) ,
            bottomStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
            
            ])
        
    }
    
    
    
    let textDescription:UITextView = {
        
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        let atrributedText = NSMutableAttributedString(string: "Welcome to iOS development comunity!", attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18) ])
        atrributedText.append(NSAttributedString(string: "\n\n\niOS app development is done primarily with Apple's Xcode integrated development environment, Objective-C, and the Swift programming language.", attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 15) , NSAttributedString.Key.foregroundColor:UIColor.gray]))
        textView.attributedText = atrributedText
        
        
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isSelectable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureOurView()
        
        makeCustomStackView()
    }
    
    
}
extension SecondViewPage  {
    
    private func configureOurView(){
        
        let containerView = UIView()
        
        
        view.addSubview(textDescription)
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        //        containerView.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        containerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        containerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        containerView.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.5).isActive = true
        
        
        
        
        
        
        
        textDescription.topAnchor.constraint(equalTo:containerView.bottomAnchor).isActive = true
        
        textDescription.leftAnchor.constraint(equalTo: view.leftAnchor , constant: 24).isActive = true
        
        textDescription.rightAnchor.constraint(equalTo: view.rightAnchor , constant: -24).isActive = true
        
        textDescription.bottomAnchor.constraint(equalTo: view.bottomAnchor , constant: 0).isActive = true
    }
    
}


