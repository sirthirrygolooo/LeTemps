import SwiftUI

struct SummaryView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "flame.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    
                    Text("BIENVENUE")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                        Image(systemName: "flame.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                }
                

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

                    ProgressBarView(percentage: 60, color: .blue, icon: "xmark", time: "310min")
                    ProgressBarView(percentage: 15, color: .green, icon: "checkmark", time: "120min")
                    ProgressBarView(percentage: 20, color: .red, icon: "checkmark", time: "160min")
                    ProgressBarView(percentage: 80, color: .purple, icon: "xmark", time: "420min")

                    Button(action: {
                        NavigationLink("hehe", destination: StatsView())
                    }) {
                        HStack {
                            Text("En voir plus")
                                .foregroundColor(.blue)
                            Image(systemName: "plus.circle")
                        }

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
            .navigationBarTitle("Résumé", displayMode: .large)
        }
    }
}

#Preview {
    SummaryView()
}
