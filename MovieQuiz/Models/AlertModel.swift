//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by alexander on 12.10.2024.
//

import Foundation

class AlertModel {
    let title: String
    let message: String
    let buttonText: String
    let completion: () -> Void

    init(title: String, message: String, buttonText: String, completion: @escaping () -> Void) {
        self.title = title
        self.message = message
        self.buttonText = buttonText
        self.completion = completion
    }
}
