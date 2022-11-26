//
//  HomeDetailPresenter.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation

class HomeDetailPresenter {
    
    var view: HomeDetailViewProtocol?
    var interactor: HomeDetailInteractorProtocol
    
    init(interactor: HomeDetailInteractorProtocol) {
        self.interactor = interactor
    }
    
}

extension  HomeDetailPresenter: HomeDetailPresenterProtocol {
    
    func loadData(){
        let personsDetail =  interactor.getPerson()
        view?.loadInfo(personDetail: personsDetail)
    }
                       
    
}
