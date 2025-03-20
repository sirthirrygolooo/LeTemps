import SwiftUI

struct ScreenTimeComparisonView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "clock")
                    .foregroundColor(.purple)
                Text("Temps d'écran")
                    .font(.headline)
                    .foregroundColor(.purple)
            }

            Text("En baisse !")
                .font(.subheadline)
                .padding(.vertical, 4)

            HStack {
                Text("1h 45")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: "face.smiling")
                    .foregroundColor(.yellow)
            }

            TextField("Mon ressenti...", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.top, 8)
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    ScreenTimeComparisonView()
}
