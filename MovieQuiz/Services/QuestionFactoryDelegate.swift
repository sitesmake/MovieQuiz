//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by alexander on 07.10.2024.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
}
