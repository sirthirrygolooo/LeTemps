//
//  LockView.swift
//  ScreenTimeApp
//
//  Created by froehly jean-baptiste on 11/03/2025.
//

import SwiftUI

struct LockView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Verrouiller une app")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                
                AppListView()
            }
        }
    }
}

#Preview {
    LockView()
}
