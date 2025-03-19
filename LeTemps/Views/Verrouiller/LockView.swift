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
                AppListView()
            }
            .navigationBarTitle("Verrouiller une app.", displayMode: .large)
        }
    }
}

#Preview {
    LockView()
}
