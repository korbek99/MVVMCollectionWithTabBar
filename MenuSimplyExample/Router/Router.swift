//
//  Router.swift
//  MenuSimplyExample
//
//  Created by Jose David Bustos H on 28-09-17.
//

import Foundation
import UIKit

class Router {
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func showDetailViewController(imageURL: String, title: String, desc: String) {
        let detailViewController = DetailsViewController()
        detailViewController.strImage = imageURL
        detailViewController.strLabel = title
        detailViewController.strDescr = desc
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    func navigateToConfig() {
        let nextViewController = ConfigViewController()
        navigationController?.pushViewController(nextViewController, animated: true)
    }
}
