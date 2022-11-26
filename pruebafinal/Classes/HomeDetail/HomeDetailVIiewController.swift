//
//  HomeDetailVIiewController.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation
import UIKit


class HomeDetailViewController: UIViewController {
    
    var presenter: HomeDetailPresenterProtocol?
    
    
    public convenience init(presenter: HomeDetailPresenterProtocol){
        self.init(nibName: "HomeDetailViewController", bundle: nil)
        self.presenter = presenter
    }
    
}
extension HomeDetailViewController: HomeDetailViewProtocol {
    func loadInfo(personDetail: PersonProtocol) {
        
    }
    
    
    
}
