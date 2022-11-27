//
//  ServiceApi.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation

public class ServiceApi: ServiceApiProtocol {


  //  var objectList: ResponseProtocol?
    var objList = [ResponseProtocol]()
    
    
    
        func getPersons(page: String, completion: @escaping (Result<ResponseProtocol, Error>) -> Void) {
    
        var urlpage = "https://swapi.dev/api/people/?page="
        urlpage.append(page)
        guard let url = URL(string: urlpage) else { return }
        
        let urlSession = URLSession.shared
        urlSession.dataTask(with: url) { (data, response, error) in
            if let error{
                completion(.failure(error))
                if let obj = StoreManager.shared.getApiObject() {
                    let lenght = obj.count
                    guard  let intPage = Int(page) else {return}
                    if intPage <= lenght {
                        completion(.success(obj[intPage - 1]))
                    } else {
                        completion(.failure(error))
                    }
                }
                return
            }
          
            
            if let data {
                do{
               
                    let objectResults = try JSONDecoder().decode(ResponseApi.self, from: data)
                    completion(.success(objectResults))
                    self.objList.append(objectResults)
                    StoreManager.shared.saveRespApi(apiresult: self.objList)
                    
                    
                }  catch let DecodingError.dataCorrupted(context) {
                    print(context)
                } catch let DecodingError.keyNotFound(key, context) {
                    print("Key '\(key)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch let DecodingError.valueNotFound(value, context) {
                    print("Value '\(value)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch let DecodingError.typeMismatch(type, context)  {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    print("error: ", error)
                }
            }
        }.resume()
        
        
    }
    
    
    
    
    
    
    
    // solo nos quedamos el result, ELIMINAR ESTO
    func getPersonsResults(completion: @escaping (Result<[PersonProtocol], Error>) -> Void) {
    
        var urlpage = "https://swapi.dev/api/people/?page=1"
        //urlpage.append(nextpage)
        guard let url = URL(string: urlpage) else { return }
        
        let urlSession = URLSession.shared
        
        
        urlSession.dataTask(with: url) { (data, response, error) in
            if let error{
                completion(.failure(error))
                print(error)
                return
            }
            ////////////IGUAL
            if let data {
                do{
                    let personResults : ResponseApi = try JSONDecoder().decode(ResponseApi.self, from: data)
                    completion(.success(personResults.results))
                    
                }  catch let DecodingError.dataCorrupted(context) {
                    print(context)
                } catch let DecodingError.keyNotFound(key, context) {
                    print("Key '\(key)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch let DecodingError.valueNotFound(value, context) {
                    print("Value '\(value)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch let DecodingError.typeMismatch(type, context)  {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    print("error: ", error)
                }
            }
        }.resume()
        
        
    }
    
    
    
}
