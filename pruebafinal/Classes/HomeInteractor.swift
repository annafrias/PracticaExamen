//
//  HomeInteractor.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation

internal final class HomeInteractor {
    
    private let homeService: HomeServiceProtocol
    
    init(homeService: HomeServiceProtocol = HomeService()) {
        self.homeService = homeService
    }
    
    
}

extension HomeInteractor: HomeInteractorProtocol {
    
}
