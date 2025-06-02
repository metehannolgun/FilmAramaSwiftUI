//
//  Film.swift
//  FilmAramaSwiftUI
//
//  Created by Metehan Olgun on 2.06.2025.
//

import Foundation

struct Film: Codable {
    let title: String
    let year: String
    let imdbId: String
    let type : String
    let poster: String
    
//    CodingKey Protocol: anahtar kelimelerimizi api ye uygun hale getirmek için kullanıyoruz.
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbID"
        case type = "Type"
        case poster = "Poster"
    }
}

struct GelenFilmler: Codable {
    let filmler : [Film]
    
    private enum CodingKeys: String, CodingKey {
        case filmler = "Search"
    }
}
