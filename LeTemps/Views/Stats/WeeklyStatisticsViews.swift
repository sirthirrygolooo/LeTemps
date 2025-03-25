import SwiftUI

struct WeeklyStatisticsView: View {
    @State private var showCircularGraph = true

    var body: some View {
        NavigationView {
            VStack {
                Text("Statistiques Hebdomadaires")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Picker("Vue", selection: $showCircularGraph) {
                    Text("Circulaire").tag(true)
                    Text("Linéaire").tag(false)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)

                ScrollView {
                    VStack(spacing: 20) {
                        if showCircularGraph {
                            VStack {
                                ForEach(0..<6) { index in
                                    HStack {
                                        CircularGraphView(percentage: Double(index) * 10 + 15, color: .blue)
                                            .frame(width: 100, height: 100)
                                        VStack(alignment: .leading) {
                                            Text("App\(index + 1)")
                                                .font(.headline)
                                            Text("Utilisation")
                                                .font(.subheadline)
                                                .foregroundColor(.gray)
                                        }
                                    }
                                }
                            }
                        } else {
                            LinearGraphView(data: [10, 20, 30, 40, 50, 60, 70], color: .green)
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