//
//  HomeContract.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation
import UIKit


protocol HomeViewControllerProtocol {
    func refreshTable()
    
}
protocol HomePresenterProtocol {
    var view: HomeViewControllerProtocol? {get set}
    func presentCharacters()
    func getPersonsCount() -> Int
    func getPersons(index: Int) -> PersonProtocol
    func checkNextCallExists() -> Bool
    
}

protocol HomeInteractorProtocol {
    
    func getPersons(page: String, completion: @escaping (Result<ResponseProtocol, Error>) -> Void)
    
}
protocol HomeServiceProtocol {
    
   func getPersonsService() -> ServiceApiProtocol

}
protocol HomeCoordiantorProtocol {
    
    func goToDetailScreen(personDetail: PersonProtocol, sender: UIViewController)
    
}
