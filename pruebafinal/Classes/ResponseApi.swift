//
//  ResponseApi.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation

struct  ResponseApi: ResponseProtocol, Codable {
    
    var count: Int
    var next: String?
    var previous: String?
    var results: [PersonAPI]
    
    
    enum CodingKeys: String, CodingKey {
        case count
        case next
        case previous
        case results
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.count = try container.decode(Int.self, forKey: .count)
        self.next = try container.decodeIfPresent(String.self, forKey: .next)
        self.previous = try container.decodeIfPresent(String.self, forKey: .previous)
        self.results = try container.decode([PersonAPI].self, forKey: .results)
    }
    
    
}
