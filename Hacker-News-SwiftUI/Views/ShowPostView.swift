//
//  ShowPostView.swift
//  Hacker-News-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-10.
//

import SwiftUI

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
