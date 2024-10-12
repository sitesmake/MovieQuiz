//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by alexander on 12.10.2024.
//

import UIKit

class AlertPresenter: AlertPresenterProtocol {
    var viewController: UIViewController?

    func show(alertModel: AlertModel) {
        let alert = UIAlertController(
            title: alertModel.title,
            message: alertModel.message,
            preferredStyle: .alert)

        let action = UIAlertAction(title: alertModel.buttonText, style: .default) { _ in
            alertModel.completion()
        }

        alert.addAction(action)

        viewController?.present(alert, animated: true)
    }
}
