//
//  ServiceApi.swift
//  pruebafinalTests
//
//  Created by annaF on 26/11/22.
//

import Foundation
@testable import pruebafinal

class ServiceApiMock: ServiceApiProtocol {
    
    var gatPersonsCalled = false
    func getPersons(page: String, completion: @escaping (Result<pruebafinal.ResponseProtocol, Error>) -> Void) {
        gatPersonsCalled = false
        
    }
    
    
    
}
