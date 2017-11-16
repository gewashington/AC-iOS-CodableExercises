//
//  IGNNews.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 Glo. All rights reserved.
//

import Foundation

//{
//    "status": "ok",
//    "source": "ign",
//    "sortBy": "top",
//    "articles": [
//    {
//    "author": null,
//    "title": "Why Now Is The Best Time To Start Playing Path of Exile - IGN Video",
//    "description": "We sit down with Grinding Gear Games Managing Director, Chris Wilson, to talk about why now is the perfect time for new players to get into Path of Exile.",
//    "url": "http://ca.ign.com/videos/2017/11/16/why-now-is-the-best-time-to-start-playing-path-of-exile",
//    "urlToImage": "https://assets1.ignimgs.com/thumbs/userUploaded/2017/11/15/pathofexile-1510787238388_1280w.png",
//    "publishedAt": "2017-11-16T20:31:00Z"
//    }}

struct IGN: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String?
    let author: String?
    let description: String
}
