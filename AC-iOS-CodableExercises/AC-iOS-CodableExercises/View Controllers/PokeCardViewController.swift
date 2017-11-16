//
//  ViewController.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Glo. All rights reserved.
//

import UIKit

class PokeCardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var pokeTableView: UITableView!
    
    var pokeCards = [Pokemon]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        pokeTableView.delegate = self
        pokeTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokeCards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokemon = pokeCards[indexPath.row]
        let cell = pokeTableView.dequeueReusableCell(withIdentifier: "PokecardCell", for: indexPath)
        cell.textLabel?.text = pokemon.name
        cell.detailTextLabel?.text = pokemon.types?[0] ?? "not type found"
        return cell
    }
    
    
    
    func loadData () {
        if let path = Bundle.main.path(forResource: "pokecards", ofType: "json") {
            let myURL = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: myURL) {
                let pokeDecoder = JSONDecoder()
                do {
                    let pokeCards = try pokeDecoder.decode(CardInfo.self, from: data)
                    self.pokeCards = pokeCards.cards
                }
                catch let error {
                    print(error)
                }
            }
        }
    }
    
    
}

