import SwiftUI

struct WeeklyStatisticsView: View {
    @State private var showBarChart = true
    @ObservedObject var chartDataObj = ChartDataContainer()

    var body: some View {
        NavigationView {
            VStack {
                Text("Statistiques Hebdomadaires")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Picker("Vue", selection: $showBarChart) {
                    Text("Barres").tag(true)
                    Text("Camembert").tag(false)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)

                ScrollView {
                    VStack(spacing: 20) {
                        if showBarChart {
                            HorizontalBarChartView(chartDataObj: chartDataObj)
                        } else {
                            CircularGraphView(chartDataObj: chartDataObj)
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Statistiques", displayMode: .inline)
        }
        .onAppear {
            chartDataObj.calc()
        }
    }
}

#Preview {
    WeeklyStatisticsView()
}

