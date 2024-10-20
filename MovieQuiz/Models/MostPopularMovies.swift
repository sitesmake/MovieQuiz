//
//  MostPopularMovies.swift
//  MovieQuiz
//
//  Created by alexander on 20.10.2024.
//

import Foundation

struct MostPopularMovies: Codable {
    let errorMessage: String
    let items: [MostPopularMovie]
}
