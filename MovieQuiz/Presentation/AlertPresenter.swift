//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by alexander on 12.10.2024.
//

import UIKit

final class AlertPresenter: AlertPresenterProtocol {
    weak var viewController: UIViewController?

    func show(alertModel: AlertModel) {
        let alert = UIAlertController(
            title: alertModel.title,
            message: alertModel.message,
            preferredStyle: .alert)

        viewController?.present(alert, animated: true)
    }
}
