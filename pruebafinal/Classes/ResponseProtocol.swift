//
//  ResponseProtocol.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation

protocol ResponseProtocol : Codable{
    
    var count: Int {get set}
    var next: String? {get set}
    var previous: String? {get set}
    var results: [PersonAPI] {get set }
    //var results: [PersonProtocol] {get set}
    
}

