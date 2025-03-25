import SwiftUI

struct ChartData: Identifiable {
    var id = UUID()
    var color: Color
    var percent: CGFloat
    var value: CGFloat
    var appName: String
    var tempMin: CGFloat
    var appIcon: String
}
