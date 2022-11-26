//
//  ResponseProtocol.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation

protocol ResponseProtocol {
    
    var count: Int {get set}
    var next: String? {get set}
    var previous: String? {get set}
    var results: [PersonAPI] {get set}
    
}

