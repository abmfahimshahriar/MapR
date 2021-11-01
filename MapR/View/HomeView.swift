//
//  HomeView.swift
//  MapR
//
//  Created by Fahim Shahriar on 31/10/21.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var userViewModel = UserViewModel()
    
    var body: some View {
        TabView {
            NavigationView {
                MapView()
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Map")
            }
            
            NavigationView {
                ContentView()
            }
            .tabItem {
                Image(systemName: "star.fill")
                Text("You")
            }
        }
        .environmentObject(userViewModel)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
