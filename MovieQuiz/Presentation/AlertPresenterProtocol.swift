//
//  AlertPresenterProtocol.swift
//  MovieQuiz
//
//  Created by alexander on 12.10.2024.
//

import UIKit

protocol AlertPresenterProtocol {
    var viewController: UIViewController? { get set }
    func show(alertModel: AlertModel)
}
