import SwiftUI

struct ScreenTimeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "clock")
                    .foregroundColor(.orange)
                Text("Temps d'écran")
                    .font(.headline)
                    .foregroundColor(.orange)
            }

            Text("Votre temps d'écran était 20% inférieur à vos amis hier. Bien joué !")
                .font(.subheadline)
                .padding(.vertical, 4)

            ProgressView(value: 0.8, total: 1.0)
                .progressViewStyle(LinearProgressViewStyle(tint: .green))
                .padding(.vertical, 8)

            Text("2h 12m")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Vous")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    ScreenTimeView()
}
