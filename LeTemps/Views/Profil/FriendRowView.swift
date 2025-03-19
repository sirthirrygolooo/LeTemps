import SwiftUI

struct FriendRowView: View {
    var name: String
    var icon: String
    var screenTime: String
    var pinned: Bool

    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                Text(screenTime)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 8)

            Spacer()

            HStack {
                Image(systemName: "message")
                    .foregroundColor(.blue)
                if (pinned == true) {
                    Image(systemName: "pin.fill")
                        .foregroundColor(.green)
                } else {
                    Image(systemName: "pin")
                        .foregroundColor(.red)
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    FriendRowView(name: "Mehdi", icon: "person", screenTime: "3h d'écran aujourd'hui", pinned: true)
}

