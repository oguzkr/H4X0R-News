//
//  ContentView.swift
//  H4X0R News
//
//  Created by Oğuz Karatoruk on 16.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    @State var isUrlExist: Bool = false
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url), isActive: $isUrlExist) {
                    NewsCellView(post: post)
                }.onTapGesture {
                    isUrlExist = post.url?.isEmpty ?? true ? false : true
                }
            }
            .navigationTitle("H4X0R NEWS")
        }.onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




