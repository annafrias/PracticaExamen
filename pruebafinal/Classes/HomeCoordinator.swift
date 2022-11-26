//
//  HomeCoordinator.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation
import UIKit


class HomeCoordinator: HomeCoordiantorProtocol {

    
    func goToDetailScreen(personDetail: PersonProtocol, sender: UIViewController) {
    
        let interactor = HomeDetailInteractor(personDetail: personDetail)
        let presenter = HomeDetailPresenter(interactor: interactor)
        let view = HomeDetailViewController(presenter: presenter)
        
       
        presenter.view = view
        
       // sender.navigationController?.show(view, sender: nil)
        sender.show(view, sender: nil)
        
    }
    
}
