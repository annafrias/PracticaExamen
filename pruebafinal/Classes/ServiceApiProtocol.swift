//
//  ServiceApiProtocol.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation


protocol ServiceApiProtocol{
    
    func getPersonsResults( completion: @escaping (Result<[PersonProtocol], Error>) -> Void)
    
    func getPersons( page: String,  completion: @escaping (Result<ResponseProtocol, Error>) -> Void)
    
    
}
