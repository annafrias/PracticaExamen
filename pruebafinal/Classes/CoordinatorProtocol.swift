//
//  Coordinator.swift
//  pruebafinal
//
//  Created by annaF on 24/11/22.
//

import Foundation
import UIKit

public protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
}
