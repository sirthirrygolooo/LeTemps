import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                FriendsListView()

                Spacer()
            }
            .navigationBarTitle("Profil", displayMode: .large)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

