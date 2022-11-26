//
//  HomeDetailVIiewController.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation
import UIKit


class HomeDetailViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelHeight: UILabel!
    var presenter: HomeDetailPresenterProtocol?
    
    
    public convenience init(presenter: HomeDetailPresenterProtocol){
        self.init(nibName: "HomeDetailViewController", bundle: nil)
        self.presenter = presenter
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.loadData()
    }
}
extension HomeDetailViewController: HomeDetailViewProtocol {
    func loadInfo(personDetail: PersonProtocol) {
        
        self.labelName.text = personDetail.name
        self.labelHeight.text = personDetail.height
    }
    
    
    
}
