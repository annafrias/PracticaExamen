//
//  HomePresenter.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation

internal final class HomePresenter {
    
    var view: HomeViewControllerProtocol?
    var interactor: HomeInteractorProtocol
    
    
    init(interactor: HomeInteractorProtocol) {
       self.interactor = interactor
    }
    
}
extension HomePresenter: HomePresenterProtocol  {
}
