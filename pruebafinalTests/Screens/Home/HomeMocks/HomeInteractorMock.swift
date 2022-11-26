//
//  HomeInteractorMock.swift
//  pruebafinalTests
//
//  Created by annaF on 26/11/22.
//

import Foundation
@testable import pruebafinal

class HomeInteractorMock: HomeInteractorProtocol {
    func getPersons(page: String, completion: @escaping (Result<pruebafinal.ResponseProtocol, Error>) -> Void) {
        <#code#>
    }
    
    
//    var showError = false
//    func getPersons(page: String, completion: @escaping (Result<pruebafinal.ResponseProtocol, Error>) -> Void) {
//
//       if showError{
//            completion(.failure(TestConstants.errorTest))
//        }
//        else {
//           completion(.success(TestConstants.personsMock))
//        }
//
//    }
//
//

    
}
