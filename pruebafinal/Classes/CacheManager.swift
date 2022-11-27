//
//  CacheManager.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation

struct CacheManager {
    static let shared = CacheManager()
    
    func saveApiResponse(page: String) {
        let serviceApi = ServiceApi()
        serviceApi.getPersons(page: page) { result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let apiresult):
                
                StoreManager.shared.saveRespApi(apiresult: apiresult)
                
            }
          
        }
    }
}
