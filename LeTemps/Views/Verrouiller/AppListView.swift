//
//  AppListView.swift
//  ScreenTimeApp
//
//  Created by froehly jean-baptiste on 11/03/2025.
//

import SwiftUI

struct AppListView: View {
    var body: some View {
        List {
            Section(header: HStack {
                Image(systemName: "clock.fill")
                Text("Récemment utilisé")
            } ) {
                AppRowView(appName: "Instagram", appIcon: "Instagram", timeUsed: "2.5h d'écran aujourd'hui")
                AppRowView(appName: "Snapchat", appIcon: "Snap", timeUsed: "4h d'écran aujourd'hui")
            }
            Section(header: HStack {
                Image(systemName: "star.fill")
                Text("Apps Favorites")
            }) {
                AppRowView(appName: "Netflix", appIcon: "Netflix", timeUsed: "")
                AppRowView(appName: "YouTube", appIcon: "Youtube", timeUsed: "")
                AppRowView(appName: "WhatsApp", appIcon: "Whatsapp", timeUsed: "")
                AppRowView(appName: "Linkedin", appIcon: "Linkedin", timeUsed: "")
            }
        }
    }
}

#Preview {
    AppListView()
}
