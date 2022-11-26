//
//  HomeDetailContract.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation

protocol HomeDetailInteractorProtocol  {
    func getPerson() -> PersonProtocol
   }


protocol HomeDetailPresenterProtocol {
    var view: HomeDetailViewProtocol? { get set }
    func  loadData()
    
}


protocol HomeDetailViewProtocol  {
    func loadInfo(personDetail: PersonProtocol)
}

