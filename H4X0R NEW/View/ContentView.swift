//
//  ContentView.swift
//  H4X0R NEW
//
//  Created by Nhan Mai on 19/06/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: Details(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }.onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct Post: Identifiable {
    var id: String
    var title: String
}

#Preview {
    ContentView()
}
