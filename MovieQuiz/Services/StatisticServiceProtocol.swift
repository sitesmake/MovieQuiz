//
//  StatisticServiceProtocol.swift
//  MovieQuiz
//
//  Created by alexander on 13.10.2024.
//

import Foundation

protocol StatisticServiceProtocol {
    var correctAnswers: Int { get }
    var totalAnswers: Int { get }
    var gamesCount: Int { get }
    var totalAccuracy: Double { get }
    func store(correctAnswers: Int, givenAnswers: Int)
    func bestGameStat() -> String
}
