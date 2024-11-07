//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by alexander on 12.10.2024.
//

import Foundation

final class AlertModel {
    let title: String
    let message: String
    let buttonText: String

    init(title: String, message: String, buttonText: String) {
        self.title = title
        self.message = message
        self.buttonText = buttonText
    }
}
