import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Profil")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                FriendsListView()

                Spacer()
            }
            .navigationBarTitle("Réglages", displayMode: .inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ProfileView()
        }
    }
}