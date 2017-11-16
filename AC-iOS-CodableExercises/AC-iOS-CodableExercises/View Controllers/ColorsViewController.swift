//
//  ColorsViewController.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Glo. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var colorTableView: UITableView!
    var colors = [Color]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        colorTableView.delegate = self
        colorTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let color = colors[indexPath.row]
        let cell = colorTableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        let red = CGFloat(color.rgb.fraction.r)
        let blue = CGFloat(color.rgb.fraction.b)
        let green = CGFloat(color.rgb.fraction.g)
        cell.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
        cell.textLabel?.text = "Color Name: \(color.name.value)"
        cell.detailTextLabel?.text = "Hex Code: \(color.hex.clean)"
        return cell
    }
    
    
    
    func loadData() {
        guard let path = Bundle.main.path(forResource: "colors", ofType: "json") else {
            return
        }
        let myURL = URL(fileURLWithPath: path)
        if let data = try? Data(contentsOf: myURL) {
            let colorDecoder = JSONDecoder()
            do {
                guard let myScheme = try? colorDecoder.decode(ColorScheme.self, from: data) else {
                    return
                }
                self.colors = myScheme.colors
            }
            //                catch let error {
            //                    print(error)
            //                }
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


