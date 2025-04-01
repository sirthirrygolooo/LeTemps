import SwiftUI

struct FriendsListView: View {
    var body: some View {
        List {
            Section(header: Text("Trouver des amis")) {
                TextField("Rechercher...", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            Section(header: Text("Vos Amis")) {
                Section(header: Text("Epinglés")) {
                FriendRowView(name: "Mehdi", icon: "friend", screenTime: "3h d'écran aujourd'hui", pinned: true)
                FriendRowView(name: "Jamesse", icon: "friend", screenTime: "7h d'écran aujourd'hui", pinned: true)
                }
                Section(header: Text("Favoris")) {
                    FriendRowView(name: "Baptiste", icon: "friend", screenTime: "", pinned: false)
                    FriendRowView(name: "Max", icon: "friend", screenTime: "", pinned: false)
                    FriendRowView(name: "UG", icon: "friend", screenTime: "", pinned: false)
                    FriendRowView(name: "Piedslie", icon: "friend", screenTime: "", pinned: false)
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

#Preview {
    FriendsListView()
}
