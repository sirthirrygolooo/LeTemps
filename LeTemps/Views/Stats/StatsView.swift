import SwiftUI

struct StatsView: View {
    var body: some View {
        NavigationView {
            VStack {

                ScrollView {
                    VStack(spacing: 20) {
                        ScreenTimeView()
                        PickupsView()
                        ScreenTimeComparisonView()
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Statistiques", displayMode: .large)
        }
    }
}

#Preview {
    StatsView()
}
