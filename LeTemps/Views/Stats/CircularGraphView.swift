import SwiftUI

struct CircularGraphView: View {
    var percentage: Double
    var color: Color

    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 1)
                .stroke(Color.gray.opacity(0.3), lineWidth: 20)
                .rotationEffect(.degrees(270))

            Circle()
                .trim(from: 0, to: percentage / 100)
                .stroke(color, lineWidth: 20)
                .rotationEffect(.degrees(270))

            Text(String(format: "%.0f%%", percentage))
                .font(.headline)
                .foregroundColor(color)
        }
    }
}

#Preview {
    CircularGraphView(percentage: 65, color: .blue)
            .frame(width: 100, height: 100)
}
