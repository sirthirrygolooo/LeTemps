import SwiftUI

class ChartDataContainer: ObservableObject {
    @Published var chartData = [
        ChartData(color: Color(red: 1, green: 0.493, blue: 0.474), percent: 8, value: 0,appName: "Snap Chien", tempMin: 16, appIcon: "Snap"),
        ChartData(color: Color(red: 1, green: 0.832, blue: 0.473), percent: 15, value: 0, appName: "Deux Stagram", tempMin: 38, appIcon: "Instagram"),
        ChartData(color: Color(red: 0.451, green: 0.988, blue: 0.838), percent: 32, value: 0, appName: "Brut Fixle", tempMin: 120, appIcon: "Netflix"),
        ChartData(color: Color(red: 0.477, green: 0.505, blue: 1), percent: 45, value: 0, appName: "Teen Deer", tempMin: 210, appIcon: "TeenDeer"),
        //ChartData(color: Color(red: 0.752, green: 0.080, blue: 0.442), percent: 0, value: 0, appName: "Onze Corde.e.s", tempMin: 210, appIcon: "TeenDeer")
    ]

    func calc() {
        var value: CGFloat = 0

        for i in 0..<chartData.count {
            value += chartData[i].percent
            chartData[i].value = value
        }
    }
}
