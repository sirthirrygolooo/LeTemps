import SwiftUI

struct PickupsView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "hand.wave")
                        .foregroundColor(.blue)
                    Text("Pick-ups")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                Text("18")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Nombre de fois ou vous avez pris votre téléphone")
                    .font(.footnote)
            }
            Spacer()
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    PickupsView()
}
