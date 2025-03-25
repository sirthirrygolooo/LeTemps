import SwiftUI

struct LinearGraphView: View {
    @ObservedObject var chartDataObj: ChartDataContainer

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(chartDataObj.chartData) { data in
                HStack {
                    HStack {
                        Image(data.appIcon)
                            .resizable()
                            .frame(width: 40, height:40)
                        VStack {
                            Text(data.appName)
                                .font(.headline)
                                .frame(width: 100, alignment: .leading)
                            Text(String(format:"%.0f% minutes",data.tempMin))
                                .font(.subheadline)
                                .frame(width: 80, alignment: .center)
                                .foregroundColor(data.color)
                        }
                    }

                    Rectangle()
                        .fill(data.color)
                        .frame(height: 20)
                        .frame(width: CGFloat(data.percent) * 3)
                        .cornerRadius(10)

                    Text(String(format: "%.0f%%", data.percent))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
    }
}

#Preview {
    LinearGraphView(chartDataObj: ChartDataContainer())
}
