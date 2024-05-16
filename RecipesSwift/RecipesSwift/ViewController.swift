//
//  ViewController.swift
//  RecipesSwift
//
//  Created by Powers Mikaela on 5/13/24.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startPresentation()
    }
    
    func startPresentation() {
        if let pageViewController = storyboard?.instantiateViewController(
            identifier: "PageViewController") as? PageViewController {
            present(pageViewController, animated: true, completion: nil)
        }
    }
}

