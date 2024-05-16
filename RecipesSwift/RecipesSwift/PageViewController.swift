//
//  PageViewController.swift
//  RecipesSwift
//
//  Created by Powers Mikaela on 5/16/24.
//

import UIKit

class PageViewController: UIPageViewController {
    let presentTextArray = ["Welcome to Recipe List!",
                            "You can choose interesting recipe and watch deatils",
                            "If you want return, you can swipe down",
                            "Good luck using the app!"]
    
    let emojiArray = ["👋", "🤓", "🧐", "😋"]

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        if let contentViewController = showViewControllerAtIndex(0) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
        
    }
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        
        guard index >= 0 else {return nil}
        guard index < presentTextArray.count else {return nil}
        guard let contentViewController = storyboard?.instantiateViewController(
            withIdentifier: "ContentViewController") as? ContentViewController else {return nil}
        
        contentViewController.presentText = presentTextArray[index]
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        contentViewController.numberOfPages = presentTextArray.count
        
        return contentViewController
    }
}


extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber -= 1
        
        return showViewControllerAtIndex(pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber += 1
        
        return showViewControllerAtIndex(pageNumber)
    }
    
    
}
