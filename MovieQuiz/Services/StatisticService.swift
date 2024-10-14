//
//  StatisticService.swift
//  MovieQuiz
//
//  Created by alexander on 13.10.2024.
//

import Foundation

final class StatisticService: StatisticServiceProtocol {
    private let storage: UserDefaults = .standard
    
    private enum Keys: String {
        case correctAnswers
        case totalAnswers
        case gamesCount
        case bestGameCorrect
        case bestGameTotal
        case bestGameDate
    }
    
    var correctAnswers: Int {
        get {
            storage.integer(forKey: Keys.correctAnswers.rawValue)
        }
        set {
            storage.set(newValue, forKey: Keys.correctAnswers.rawValue)
        }
    }
    
    var totalAnswers: Int {
        get {
            storage.integer(forKey: Keys.totalAnswers.rawValue)
        }
        set {
            storage.set(newValue, forKey: Keys.totalAnswers.rawValue)
        }
    }
    
    var gamesCount: Int {
        get {
            storage.integer(forKey: Keys.gamesCount.rawValue)
        }
        set {
            storage.set(newValue, forKey: Keys.gamesCount.rawValue)
        }
    }
    
    var bestGame: GameResult {
        get {
            let correct = storage.integer(forKey: Keys.bestGameCorrect.rawValue)
            let total = storage.integer(forKey: Keys.bestGameTotal.rawValue)
            let date = storage.object(forKey: Keys.bestGameDate.rawValue) ?? Date()
            
            return GameResult(correct: correct, total: total, date: date as! Date)
        }
        set {
            storage.set(newValue.correct, forKey: Keys.bestGameCorrect.rawValue)
            storage.set(newValue.total, forKey: Keys.bestGameTotal.rawValue)
            storage.set(newValue.date, forKey: Keys.bestGameDate.rawValue)
        }
    }
    
    var totalAccuracy: Double {
        Double(correctAnswers) / Double(totalAnswers)
    }
    
    func bestGameStat() -> String {
        "\(bestGame.correct)/\(bestGame.total) (\(bestGame.date.dateTimeString))"
    }
    
    func store(correctAnswers: Int, givenAnswers: Int) {
        self.correctAnswers += correctAnswers
        totalAnswers += givenAnswers
        gamesCount += 1
        
        let currentResult = GameResult(correct: correctAnswers, total: givenAnswers, date: Date())
        
        if currentResult.isBetterThan(bestGame) {
            bestGame = currentResult
        }
    }
}
