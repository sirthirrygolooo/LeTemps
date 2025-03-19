//
//  MainView.swift
//  ScreenTimeApp
//
//  Created by froehly jean-baptiste on 11/03/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil")
                }
            StatsView()
                .tabItem {
                    Image(systemName: "clock")
                    Text("Stats")
                }
            LockView()
                .tabItem {
                    Image(systemName: "lock")
                    Text("Verrouiller")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(LeTempsViewModel())
}
