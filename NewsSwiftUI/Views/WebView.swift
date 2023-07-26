//
//  WebView.swift
//  NewsSwiftUI
//
//  Created by 강신규 on 2023/07/26.
//

import Foundation
import WebKit
import SwiftUI


struct WebView : UIViewRepresentable {
    
    let urlString : String?
    typealias UIViewType = WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
          return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string : safeString){
                let request = URLRequest(url : url)
                uiView.load(request)
            }
        }
    }

    
}



