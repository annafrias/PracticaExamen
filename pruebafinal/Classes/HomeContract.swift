//
//  HomeContract.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation


protocol HomeViewControllerProtocol {
}
protocol HomePresenterProtocol {
    var view: HomeViewControllerProtocol? {get set}
    
}

protocol HomeInteractorProtocol {}
protocol HomeServiceProtocol {}
protocol HomeCoordiantorProtocol {}
