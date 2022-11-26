//
//  HomeServiceMock.swift
//  pruebafinalTests
//
//  Created by annaF on 26/11/22.
//

import Foundation
@testable import pruebafinal

class HomeServiceMock: HomeServiceProtocol {
    
    var getPersonsServiceCalled = false
    
    func getPersonsService() -> ServiceApiProtocol {
        getPersonsServiceCalled = true
        return TestConstants.serviceApiMock    }
    
    
    
}
