//
//  RecipesList.swift
//  RecipesSwift
//
//  Created by Powers Mikaela on 5/15/24.
//

import UIKit



class RecipesList: UITableViewController {
    let recipesNameArray = ["Marry Me Shrimp Pasta",
                            "Turkey Sub",
                            "Apricot and Peach Fried Pies",
                            "No-Bake Snickers Pie",
                            "Granny’s Mini Pecan Pies",
                            "Asparagus and Eggs",
                            "Creamy Cajun Potato Soup",
                            "Twix Pie",
                            "Cannoli Cream Pie",
                            "Hot Dog Burnt Ends"]
    
    let recipesNameAndUrls = ["Marry Me Shrimp Pasta": "https://www.allrecipes.com/marry-me-shrimp-pasta-recipe-8637241",
                            "Turkey Sub": "https://www.allrecipes.com/turkey-sub-recipe-8647890",
                            "Apricot and Peach Fried Pies": "https://www.allrecipes.com/recipe/15814/apricot-and-peach-fried-pies/",
                            "No-Bake Snickers Pie": "https://www.allrecipes.com/no-bake-snickers-pie-recipe-8550535",
                            "Granny’s Mini Pecan Pies":  "https://www.allrecipes.com/granny-s-mini-pecan-pies-recipe-8347344",
                            "Asparagus and Eggs": "https://www.allrecipes.com/asparagus-and-eggs-recipe-8634304",
                            "Creamy Cajun Potato Soup": "https://www.allrecipes.com/creamy-cajun-potato-soup-recipe-8634211",
                            "Twix Pie": "https://www.allrecipes.com/twix-pie-recipe-7563548",
                            "Cannoli Cream Pie": "https://www.allrecipes.com/cannoli-cream-pie-recipe-8416107",
                            "Hot Dog Burnt Ends": "https://www.allrecipes.com/hot-dog-burnt-ends-recipe-8642721"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startPresentation()
    }
    func startPresentation() {
        if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController {
            present(pageViewController, animated: true, completion: nil)
        }
    }
    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipesNameArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> Int {
        return indexPath.row
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        
        cell.imageView?.image = UIImage(named: recipesNameArray[indexPath.row])
        cell.imageView?.image = cell.imageView?.image?.resizableImage(withCapInsets: .zero, resizingMode: .stretch)
        cell.textLabel?.text = recipesNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! DetailVC
                detailVC.url = recipesNameAndUrls[recipesNameArray[indexPath.row]] ?? ""
            }
        }
    }

}
