//
//  HomeViewController.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var label: UILabel!
    
  
    var presenter: HomePresenterProtocol?
    var delegate: HomeCoordiantorProtocol?

    public convenience init(presenter: HomePresenterProtocol) {
        self.init(nibName: "HomeViewController", bundle: nil)
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewDidLoadExpand()
      
        
        
    }
func  viewDidLoadExpand(){
   
    collectionView.delegate = self
    collectionView.dataSource = self
    createCell()
    self.presenter?.presentCharacters()
}
    
}
extension HomeViewController: HomeViewControllerProtocol {
    func refreshTable() {
        DispatchQueue.main.async{
            
            self.collectionView.reloadData()
        }
    }
    
    
}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func createCell(){
        
        let cellNib =  UINib(nibName: "CustomCollectionCell", bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: "customView")
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let rows = presenter?.getPersonsCount() else {
            return 0
        }
        return rows
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customView", for: indexPath)
                as? CustomCollectionCell else {
            return CustomCollectionCell()
        }
        guard let personIndex = presenter?.getPersons(index: indexPath.row) else {
            return CustomCollectionCell()
            
        }
        
        cell.labelName.text = personIndex.name
        cell.labelSub.text = personIndex.height
        return cell
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
       
        guard let lastRows = presenter?.getPersonsCount() else { return}
        guard let existNextPage = self.presenter?.checkNextCallExists() else { return }
        
        if indexPath.row == lastRows - 4 && existNextPage {
            //self.isLoading = true
            presenter?.presentCharacters()
          
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let personIndex = self.presenter?.getPersons(index: indexPath.row) else {
            return
            
        }
        self.delegate?.goToDetailScreen(personDetail: personIndex, sender: self)
    }
    
}

