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
    
    let urlArray = ["https://www.allrecipes.com/marry-me-shrimp-pasta-recipe-8637241",
                    "https://www.allrecipes.com/turkey-sub-recipe-8647890",
                    "https://www.allrecipes.com/recipe/15814/apricot-and-peach-fried-pies/",
                    "https://www.allrecipes.com/no-bake-snickers-pie-recipe-8550535",
                    "https://www.allrecipes.com/granny-s-mini-pecan-pies-recipe-8347344",
                    "https://www.allrecipes.com/asparagus-and-eggs-recipe-8634304",
                    "https://www.allrecipes.com/creamy-cajun-potato-soup-recipe-8634211"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: urlArray[0])
        let request = URLRequest(url: url!)
        
        webView.load(request)
        webView.allowsBackForwardNavigationGestures = true
    }
    
}
