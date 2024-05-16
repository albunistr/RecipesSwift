//
//  DetailVC.swift
//  RecipesSwift
//
//  Created by Powers Mikaela on 5/15/24.
//

import UIKit
import WebKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var url = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: url)
        let request = URLRequest(url: url!)
        

        webView.load(request)
        webView.allowsBackForwardNavigationGestures = true
    }
    
}

