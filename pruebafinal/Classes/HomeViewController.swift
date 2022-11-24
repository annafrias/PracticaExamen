//
//  HomeViewController.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var presenter: HomePresenterProtocol?
    var delegate: HomeCoordiantorProtocol?

    public convenience init(presenter: HomePresenterProtocol) {
        self.init(nibName: "HomeViewController", bundle: nil)
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
}
extension HomeViewController: HomeViewControllerProtocol {
    
}
