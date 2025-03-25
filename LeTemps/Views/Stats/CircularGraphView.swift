import SwiftUI

struct CicularGraphView: View {
    var data: [(title: String, value: Double, color: Color)]

    var body: some View {
        ZStack {
            ForEach(0..<data.count) { index in
                PieSliceView(
                    startAngle: self.startAngle(for: index),
                    endAngle: self.endAngle(for: index),
                    color: self.data[index].color
                )
                .rotationEffect(.degrees(self.startAngle(for: index) - 90))
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        self.data[index].value = self.data[index].value
                    }
                }
            }
            Text(totalTimeText())
                .font(.headline)
                .foregroundColor(.black)
        }
        .frame(width: 200, height: 200)
    }

    private func startAngle(for index: Int) -> Double {
        let sum = data[..<index].reduce(0) { $0 + $1.value }
        return Double(sum) / 100 * 360
    }

    private func endAngle(for index: Int) -> Double {
        let sum = data[..<(index + 1)].reduce(0) { $0 + $1.value }
        return Double(sum) / 100 * 360
    }

    private func totalTimeText() -> String {
        let total = data.reduce(0) { $0 + $1.value }
        return "\(Int(total))%"
    }
}

struct PieSliceView: View {
    var startAngle: Double
    var endAngle: Double
    var color: Color

    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
                path.move(to: center)
                path.addArc(
                    center: center,
                    radius: min(geometry.size.width, geometry.size.height) / 2,
                    startAngle: .degrees(self.startAngle),
                    endAngle: .degrees(self.endAngle),
                    clockwise: false
                )
            }
            .fill(color)
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
