//
//  AppRowView.swift
//  ScreenTimeApp
//
//  Created by froehly jean-baptiste on 11/03/2025.
//

import SwiftUI

struct AppRowView: View {
    
    var appName: String
    var appIcon: String
    var timeUsed: String
    
    var body: some View {
        HStack {
            Image(systemName: appIcon)
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                Text(appName)
                    .font(.headline)
                Text(timeUsed)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 8)
            
            Spacer()
            
            HStack {
                Image(systemName: "lock.open.fill")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Image(systemName: "lock.fill")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

#Preview {
    AppRowView(appName: "Instagram", appIcon: "photo", timeUsed: "2.5h d'écran aujourd'hui")
}
