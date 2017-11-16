//
//  NewsViewController.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Glo. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var newsTableView: UITableView!
    var ignNews = [Article]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        newsTableView.delegate = self
        newsTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ignNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let news = ignNews[indexPath.row]
        let cell = newsTableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath)
        cell.textLabel?.text = news.title ?? "No title given."
        cell.detailTextLabel?.text = news.author ?? "Author not given."
        return cell
    }
    
    
    func loadData() {
        if let path = Bundle.main.path(forResource: "newsapi", ofType: "json") {
            let myURL = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: myURL) {
                let ignDecoder = JSONDecoder()
                do{
                    let ignNews = try ignDecoder.decode(IGN.self, from: data)
                    self.ignNews = ignNews.articles
                }
                catch let error {
                    print(error)
                }
            }
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
