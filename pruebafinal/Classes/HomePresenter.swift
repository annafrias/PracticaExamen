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
    
    
    var page = "1"
    var next: String?
    
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
    
    func checkNextCallExists() -> Bool{
        if next != nil {
            return true
        } else {
            return false
        }
  
      }
    func presentCharacters() {
        
        interactor.getPersons(page: self.page){ result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let peopleApi):
                self.persons.append(contentsOf: peopleApi.results)
                self.next = peopleApi.next
                guard var pageInt = Int(self.page) else {return}
                pageInt += 1
                self.page = String(pageInt)
                print(peopleApi.results)
                self.view?.refreshTable()
            }
            
        }
        
    }
    
}



