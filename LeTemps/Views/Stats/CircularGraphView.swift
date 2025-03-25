import SwiftUI

struct CicularGraphView: View {
    struct DonutChart : View {
    @ObservedObject var charDataObj = ChartDataContainer()
    @State var indexOfTappedSlice = -1
    var body: some View {
        VStack {
            ZStack {
                ForEach(0..<charDataObj.chartData.count) { index in
                    Circle()
                        .trim(from: index == 0 ? 0.0 : charDataObj.chartData[index-1].value/100,
                              to: charDataObj.chartData[index].value/100)
                        .stroke(charDataObj.chartData[index].color,lineWidth: 50)
                        .onTapGesture {
                            indexOfTappedSlice = indexOfTappedSlice == index ? -1 : index
                        }
                        .scaleEffect(index == indexOfTappedSlice ? 1.1 : 1.0)
                        .animation(.spring())
                }
                if indexOfTappedSlice != -1 {
                    Text(String(format: "%.2f", Double(charDataObj.chartData[indexOfTappedSlice].percent))+"%")
                        .font(.title)
                }
            }
            .frame(width: 200, height: 250)
            .padding()
            .onAppear() {
                self.charDataObj.calc()
            }
        }
    }
}

#Preview {
    CicularGraphView(data: [
        ("App1", 20, .blue),
        ("App2", 15, .green),
        ("App3", 25, .red),
        ("App4", 10, .yellow),
        ("App5", 15, .purple),
        ("App6", 15, .orange)
    ])}
