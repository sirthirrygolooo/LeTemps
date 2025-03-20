import SwiftUI

struct StatsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Statistiques")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                ScrollView {
                    VStack(spacing: 20) {
                        ScreenTimeView()
                        PickupsView()
                        ScreenTimeComparisonView()
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Statistiques", displayMode: .inline)
        }
    }
}

#Preview {
    StatsView()
}
