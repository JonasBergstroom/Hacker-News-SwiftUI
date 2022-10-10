//
//  ContentView.swift
//  Hacker-News-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-10.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
