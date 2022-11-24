//
//  AppCoordinator.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    var window: UIWindow
    
    
    lazy var navigationController: UINavigationController = {
        getNavigation()
    }()
    
    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
   
    
    private func getNavigation() -> UINavigationController {
        let navigator = UINavigationController()
        
        return navigator
    }
    
    
    func start() {
        showHome()
    }
    
    func showHome() {
        let interactor = HomeInteractor()
        let presenter = HomePresenter(interactor: interactor)
        let view = HomeViewController(presenter: presenter)
        
       // view.delegate = coordinator
        presenter.view = view
        
        navigationController.setViewControllers([view], animated: true)
    }
}
