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
            Section(header: Text("Récemment Utilisé")) {
                AppRowView(appName: "Instagram", appIcon: "instagramPic", timeUsed: "2.5h d'écran aujourd'hui")
                AppRowView(appName: "Snapchat", appIcon: "snapPic", timeUsed: "4h d'écran aujourd'hui")
            }
            Section(header: Text("Apps Favorites")) {
                AppRowView(appName: "Netflix", appIcon: "netflixPic", timeUsed: "")
                AppRowView(appName: "YouTube", appIcon: "ytPic", timeUsed: "")
                AppRowView(appName: "WhatsApp", appIcon: "whatsappPic", timeUsed: "")
                AppRowView(appName: "Linkedin", appIcon: "linkedinPic", timeUsed: "")
            }
        }
    }
}

#Preview {
    AppListView()
}
