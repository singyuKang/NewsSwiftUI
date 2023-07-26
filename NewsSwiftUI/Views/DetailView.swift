//
//  DetailView.swift
//  NewsSwiftUI
//
//  Created by 강신규 on 2023/07/26.
//

import SwiftUI
import WebKit


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url : "https://www.google.com")
    }
}
