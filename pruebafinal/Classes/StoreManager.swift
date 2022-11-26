//
//  StoreManager.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation

struct StoreManager {
    static let shared = StoreManager()

    func saveRespApi(apiresult: [ResponseProtocol])
    {
        guard let apiobj = apiresult as? ResponseProtocol else {
            return
        }
        do {

           let dataApi = try JSONEncoder().encode(apiobj)
           let cachesDirectory = getCachesDirectory()
           let storageURL = cachesDirectory.appendingPathComponent("apiobj.json",
                                                                       isDirectory: false)

            do {
                try dataApi.write(to: storageURL)
            } catch let errorWrite {
                print(errorWrite.localizedDescription)
                
            }

        } catch let errorDescode {
            print(errorDescode.localizedDescription)
        }
    }

   func getPerson() -> ResponseApi? {
        let cachesDirectory = getCachesDirectory()
        let storageURL = cachesDirectory.appendingPathComponent("apiobj.json",
                                                                   isDirectory: false)

        guard let apiData = try? Data(contentsOf: storageURL),
             let apiObject = try? JSONDecoder().decode(ResponseApi.self, from: apiData) else {
            return nil
        }

       return apiObject
    }

    func getCachesDirectory() -> URL {
        let paths = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)

        return paths[0]
    }
}
