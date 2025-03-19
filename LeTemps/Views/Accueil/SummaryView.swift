import SwiftUI

struct SummaryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("BIENVENUE")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Text("Résumé")
                    .font(.title)
                    .padding(.bottom, 20)

                Text("Lundi 4 octobre")
                    .font(.headline)
                    .padding(.bottom, 10)

                WeekdayView(days: ["L", "M", "M", "J", "V", "S", "D"], selectedDays: [false, true, true, true, true, false, false])

                VStack {
                    HStack {
                        Text("2h 46min")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Spacer()
                        Text("Objectif journalier 3h")
                            .font(.subheadline)
                            .foregroundColor(.green)
                    }

                    Text("Utilisation | Moyenne")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.top, 4)

                    ProgressBarView(percentage: 10, color: .blue, icon: "checkmark", time: "22min")
                    ProgressBarView(percentage: 5, color: .green, icon: "checkmark", time: "12min")
                    ProgressBarView(percentage: 7, color: .red, icon: "xmark", time: "18min")
                    ProgressBarView(percentage: 1, color: .purple, icon: "xmark", time: "9min")

                    Button(action: {
                    }) {
                        Text("En voir plus")
                            .foregroundColor(.blue)
                    }
                    .padding(.top, 10)
                }
                .padding()
                .background(Color(UIColor.systemBackground))
                .cornerRadius(15)
                .shadow(radius: 5)
                .padding()

                Spacer()
            }
            .navigationBarTitle("Résumé", displayMode: .inline)
        }
    }
}

#Preview {
    SummaryView()
}
