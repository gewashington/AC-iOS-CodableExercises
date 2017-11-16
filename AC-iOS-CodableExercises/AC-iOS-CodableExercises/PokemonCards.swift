//
//  PokemonCards.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Glo. All rights reserved.
//

import Foundation


//{
//    "cards": [
//    {
//    "id": "xy5-15",
//    "name": "Shroomish",
//    "nationalPokedexNumber": 285,
//    "imageUrl": "https://images.pokemontcg.io/xy5/15.png",
//    "imageUrlHiRes": "https://images.pokemontcg.io/xy5/15_hires.png",
//    "types": [
//    "Grass"
//    ],
//    "supertype": "Pokémon",
//    "subtype": "Basic",
//    "hp": "60",
//    "retreatCost": [
//    "Colorless"
//    ],
//    "number": "15",
//    "artist": "Mizue",
//    "rarity": "Common",
//    "series": "XY",
//    "set": "Primal Clash",
//    "setCode": "xy5",
//    "attacks": [
//    {
//    "cost": [
//    "Colorless"
//    ],
//    "name": "Spore",
//    "text": "Your opponent's Active Pokémon is now Asleep.",
//    "damage": "",
//    "convertedEnergyCost": 1
//    }
//    ],
//    "weaknesses": [
//    {
//    "type": "Fire",
//    "value": "x2"
//    }
//    ]
//    }}

struct CardInfo: Codable {
    let cards: [Pokemon]

}


struct Pokemon: Codable {
    let name: String //guard
    let types: [String]?
    let rarity: String
}



