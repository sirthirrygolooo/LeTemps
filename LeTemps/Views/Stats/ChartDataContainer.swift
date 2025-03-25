import SwiftUI

class ChartDataContainer: ObservableObject {
    @Published var chartData = [
        ChartData(color: Color(red: 1, green: 0.493, blue: 0.474), percent: 8, value: 0,appName: "SnapChat", tempMin: 16),
        ChartData(color: Color(red: 1, green: 0.832, blue: 0.473), percent: 15, value: 0, appName: "Un stagram", tempMin: 38),
        ChartData(color: Color(red: 0.451, green: 0.988, blue: 0.838), percent: 32, value: 0, appName: "Netflix", tempMin: 120),
        ChartData(color: Color(red: 0.477, green: 0.505, blue: 1), percent: 45, value: 0, appName: "Teen Deer", tempMin: 210)
    ]

    func calc() {
        var value: CGFloat = 0

        for i in 0..<chartData.count {
            value += chartData[i].percent
            chartData[i].value = value
        }
    }
}
