//
//  Colors.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Glo. All rights reserved.
//

import Foundation

struct ColorScheme: Codable  {
    let mode: String
    let colors: [Color]
}

struct Color: Codable {
    let name: Name
    let rgb: RGBWrapper
    let hex: HexWrapper
}

struct Name: Codable {
    let value: String
}

struct HexWrapper: Codable {
    let clean: String
}

struct RGBWrapper: Codable {
    let fraction: FractionWrapper
}

struct FractionWrapper: Codable {
    let r: Double
    let g: Double
    let b: Double

}


//{
//    "mode": "analogic",
//    "count": "6",
//    "colors": [
//    {
//    "hex": {
//    "value": "#04429A",
//    "clean": "04429A"
//    },
//    "rgb": {
//    "fraction": {
//    "r": 0.01568627450980392,
//    "g": 0.25882352941176473,
//    "b": 0.6039215686274509
//    },
//    "r": 4,
//    "g": 66,
//    "b": 154,
//    "value": "rgb(4, 66, 154)"
//    },
//    "hsl": {
//    "fraction": {
//    "h": 0.5977777777777779,
//    "s": 0.9493670886075948,
//    "l": 0.30980392156862746
//    },
//    "h": 215,
//    "s": 95,
//    "l": 31,
//    "value": "hsl(215, 95%, 31%)"
//    },
//    "hsv": {
//    "fraction": {
//    "h": 0.5977777777777779,
//    "s": 0.9740259740259739,
//    "v": 0.6039215686274509
//    },
//    "value": "hsv(215, 97%, 60%)",
//    "h": 215,
//    "s": 97,
//    "v": 60
//    },
//    "name": {
//    "value": "Congress Blue",
//    "closest_named_hex": "#02478E",
//    "exact_match_name": false,
//    "distance": 339
//    },
//    "cmyk": {
//    "fraction": {
//    "c": 0.9740259740259741,
//    "m": 0.5714285714285715,
//    "y": 0,
//    "k": 0.39607843137254906
//    },
//    "value": "cmyk(97, 57, 0, 40)",
//    "c": 97,
//    "m": 57,
//    "y": 0,
//    "k": 40
//    },
//    "XYZ": {
//    "fraction": {
//    "X": 0.2080321568627451,
//    "Y": 0.23204862745098037,
//    "Z": 0.6051819607843136
//    },
//    "value": "XYZ(21, 23, 61)",
//    "X": 21,
//    "Y": 23,
//    "Z": 61
//    },
//    "image": {
//    "bare": "http://www.thecolorapi.com/id?format=svg&named=false&hex=04429A",
//    "named": "http://www.thecolorapi.com/id?format=svg&hex=04429A"
//    },
//    "contrast": {
//    "value": "#000000"
//    },
//    "_links": {
//    "self": {
//    "href": "/id?hex=04429A"
//    }
//    },
//    "_embedded": {}
//    },

