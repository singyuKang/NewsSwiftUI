//
//  NetworkManager.swift
//  NewsSwiftUI
//
//  Created by 강신규 on 2023/07/26.
//

import Foundation


class NetworkManager : ObservableObject {
    
    @Published var posts = [Post]()
    
    
        
    func fetchData(){
        fetchURL(urlString : "https://hn.algolia.com/api/v1/search?tags=front_page")
        
    }
    
    func fetchURL(urlString : String) {
        if let url = URL(string : urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                        }catch {
                            print(error)
                        }
                    }
                 
                    
                }
            }
            task.resume()
        }
        
    }
    
    
    
    
}
