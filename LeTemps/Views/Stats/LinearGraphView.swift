import SwiftUI

struct LinearGraphView: View {
    var data: [Double]
    var color: Color

    var body: some View {
        ZStack {
            ForEach(0..<data.count, id: \.self) { index in
                Rectangle()
                    .frame(width: 30, height: CGFloat(data[index]) * 3)
                    .offset(y: -CGFloat(data[index]) * 3)
                    .foregroundColor(color)
                    .animation(.easeInOut)
                    .position(x: CGFloat(index) * 40 + 20)
            }
        }
        .frame(height: 200)
    }
}

#Preview {
    LinearGraphView(data: [10, 20, 30, 40, 50, 60, 70], color: .green)
}
