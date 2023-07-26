//
//  ContentView.swift
//  NewsSwiftUI
//
//  Created by 강신규 on 2023/07/26.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
           
              
            }.navigationBarTitle("News")
        }.onAppear {
            self.networkManager.fetchData()
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}

let posts : [Post] = [
//    Post(id: "1", title: "hello"),
//    Post(id: "2", title: "myna"),
//    Post(id: "3", title: "hsadasd")
]
