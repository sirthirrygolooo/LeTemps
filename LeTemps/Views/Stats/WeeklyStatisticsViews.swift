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
                            CicularGraphView(data: [
                                ("App1", 20, .blue),
                                ("App2", 15, .green),
                                ("App3", 25, .red),
                                ("App4", 10, .yellow),
                                ("App5", 15, .purple),
                                ("App6", 15, .orange)
                            ])
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
