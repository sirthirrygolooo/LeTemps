import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            SummaryView()
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
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Paramètres")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(LeTempsViewModel())
}
