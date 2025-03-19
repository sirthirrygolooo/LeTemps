import SwiftUI

struct FriendRowView: View {
    var name: String
    var icon: String
    var screenTime: String

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
                Image(systemName: "arrow.clockwise")
                    .foregroundColor(.blue)
                Image(systemName: "xmark")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

struct FriendRowView_Previews: PreviewProvider {
    static var previews: some View {
        FriendRowView(name: "Mehdi", icon: "person", screenTime: "3h d'écran aujourd'hui")
    }
}