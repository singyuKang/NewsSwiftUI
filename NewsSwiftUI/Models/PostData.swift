//
//  PostData.swift
//  NewsSwiftUI
//
//  Created by 강신규 on 2023/07/26.
//

import Foundation


struct Results : Decodable {
    let hits : [Post]
    
}

struct Post : Decodable, Identifiable {
    var id : String {
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
    
}
