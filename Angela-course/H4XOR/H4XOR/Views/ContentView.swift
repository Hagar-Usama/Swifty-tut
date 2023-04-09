//
//  ContentView.swift
//  H4XOR
//
//  Created by Hagar Osama on 14/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                HStack {
                    NavigationLink(destination: DetailView(url: post.url)) {
                        
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
            }
            .navigationBarTitle("H4XOR News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

