//
//  GameResult.swift
//  MovieQuiz
//
//  Created by alexander on 13.10.2024.
//

import Foundation

struct GameResult {
    let correct: Int
    let total: Int
    let date: Date
    
    func isBetterThan(_ another: GameResult) -> Bool {
        correct > another.correct
    }
}
