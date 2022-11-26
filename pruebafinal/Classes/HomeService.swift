//
//  HomeService.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation

internal final class HomeService: HomeServiceProtocol {
    
    private let responseApiService: ServiceApiProtocol
    
    init(responseApiService: ServiceApiProtocol = ServiceApi()) {
        self.responseApiService = responseApiService
    }
    
    func getPersonsService() -> ServiceApiProtocol {
        return responseApiService
    }
    
}
 
