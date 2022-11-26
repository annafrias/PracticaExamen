//
//  HomeCoordinatorMock.swift
//  pruebafinalTests
//
//  Created by annaF on 26/11/22.
//

import Foundation
import UIKit

@testable import pruebafinal

class HomeCoordiantorMock: HomeCoordiantorProtocol {
    var goToDetailScreenCalled = false
    
    func goToDetailScreen(personDetail: PersonProtocol, sender: UIViewController) {
        goToDetailScreenCalled = true
        
    }
    
    
    
}
