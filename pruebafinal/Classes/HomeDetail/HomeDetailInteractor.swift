//
//  HomeDetailCoordinator.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation


internal final class HomeDetailInteractor {
    var personDetail: PersonProtocol
    
    init(personDetail: PersonProtocol) {
        self.personDetail = personDetail
    }
}

extension HomeDetailInteractor: HomeDetailInteractorProtocol {
  
    func getPerson() -> PersonProtocol {
        return self.personDetail
    }
    
    
    
}
