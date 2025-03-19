import SwiftUI

struct FriendsListView: View {
    var body: some View {
        List {
            Section(header: Text("Trouver des amis")) {
                TextField("Rechercher...", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            Section(header: Text("Vos Amis")) {
                FriendRowView(name: "Mehdi", icon: "person", screenTime: "3h d'écran aujourd'hui")
                FriendRowView(name: "Jamesse", icon: "person", screenTime: "7h d'écran aujourd'hui")

                Section(header: Text("Favoris")) {
                    FriendRowView(name: "Baptiste", icon: "person", screenTime: "")
                    FriendRowView(name: "Max", icon: "person", screenTime: "")
                    FriendRowView(name: "UG", icon: "person", screenTime: "")
                    FriendRowView(name: "Piedslie", icon: "person", screenTime: "")
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct FriendsListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsListView()
    }
}