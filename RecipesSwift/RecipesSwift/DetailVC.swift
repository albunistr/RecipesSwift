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
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    var url = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: url)
        let request = URLRequest(url: url!)
        

        webView.load(request)
        webView.allowsBackForwardNavigationGestures = true
        backButton.isEnabled = webView.canGoBack
        forwardButton.isEnabled = webView.canGoForward
    }
    @IBAction func backButtonPressed(_ sender: UIButton) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    @IBAction func forwardButtonPressed(_ sender: UIButton) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
}

