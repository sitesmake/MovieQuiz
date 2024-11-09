//
//  MovieQuizViewControllerProtocol.swift
//  MovieQuiz
//
//  Created by alexander on 07.11.2024.
//

import UIKit

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step: QuizStepViewModel)
    func show(quiz result: AlertModel)

    func highlightImageBorder(isCorrectAnswer: Bool)

    func showLoadingIndicator()
    func hideLoadingIndicator()

    func showNetworkError(message: String)
}
