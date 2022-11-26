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
    var persons = [PersonProtocol]()
    
    
    init(interactor: HomeInteractorProtocol) {
       self.interactor = interactor
    }
    
}
extension HomePresenter: HomePresenterProtocol  {
   
    func getPersonsCount() -> Int {
        return persons.count
    }
    
    func getPersons(index: Int) -> PersonProtocol {
         return persons[index]
    }
    
    
    func presentCharacters() {
        
        interactor.getPersons { result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let peopleApi):
                self.persons.append(contentsOf: peopleApi.results)
                print(peopleApi.results)
                self.view?.refreshTable()
            }
            
        }
        
    }
    
}



