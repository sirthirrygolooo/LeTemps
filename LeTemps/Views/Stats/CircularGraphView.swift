import SwiftUI

struct CircularGraphView: View {
    @ObservedObject var chartDataObj = ChartDataContainer()
    @State private var indexOfTappedSlice = -1

    var body: some View {
        VStack {
            ZStack {
                ForEach(chartDataObj.chartData.indices, id: \.self) { index in
                    Circle()
                        .trim(from: index == 0 ? 0.0 : chartDataObj.chartData[index - 1].value / 100,
                               to: chartDataObj.chartData[index].value / 100)
                        .stroke(chartDataObj.chartData[index].color, lineWidth: 50)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                indexOfTappedSlice = indexOfTappedSlice == index ? -1 : index
                            }
                        }
                        .scaleEffect(index == indexOfTappedSlice ? 1.1 : 1.0)
                        .animation(.spring(), value: indexOfTappedSlice)
                }
                if indexOfTappedSlice != -1 {
                    VStack {
                        Text(String(format: "%.2f%%", chartDataObj.chartData[indexOfTappedSlice].percent))
                            .font(.title)
                        Text(String(format: "%.2f% mins", chartDataObj.chartData[indexOfTappedSlice].tempMin))
                            .font(.subheadline)
                    }
                } else {
                    VStack {
                        Text("Cliquez sur une donnée")
                            .font(.title2)
                        Text("Hehe")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .frame(width: 200, height: 250)
            .padding()
            
            ForEach(chartDataObj.chartData.indices, id: \.self) { index in
                HStack {
                    Text(chartDataObj.chartData[index].appName)
                        .onTapGesture {
                            indexOfTappedSlice = indexOfTappedSlice == index ? -1 : index
                        }
                        .font(indexOfTappedSlice == index ? .headline : .subheadline)
                    RoundedRectangle(cornerRadius: 8)
                        .fill(chartDataObj.chartData[index].color)
                        .frame(width: 15, height: 15)
                }
            }
            .padding(8)
            .frame(width: 300, alignment: .trailing)
            
        }
        .onAppear {
            chartDataObj.calc()
        }
    }
}

struct CircularGraphView_Previews: PreviewProvider {
    static var previews: some View {
        CircularGraphView()
    }
}
