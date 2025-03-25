import SwiftUI

struct WeeklyStatisticsView: View {
    @State private var showPieChart = true

    var body: some View {
        NavigationView {
            VStack {
                Text("Statistiques Hebdomadaires")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Picker("Vue", selection: $showPieChart) {
                    Text("Camembert").tag(true)
                    Text("Linéaire").tag(false)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)

                ScrollView {
                    VStack(spacing: 20) {
                        if showPieChart {
                            CircularGraphView()
                        } else {
                            LinearGraphView(data: [20, 15, 25, 10, 15, 15], color: .green)
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Statistiques", displayMode: .inline)
        }
    }
}

#Preview {
    WeeklyStatisticsView()
}
