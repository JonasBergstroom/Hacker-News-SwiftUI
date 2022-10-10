//
//  ShowPostView.swift
//  Hacker-News-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-10.
//

import SwiftUI
import WebKit

struct ShowPostView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct ShowPostView_Previews: PreviewProvider {
    static var previews: some View {
        ShowPostView(url: "")
    }
}

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
