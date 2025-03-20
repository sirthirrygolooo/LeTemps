import SwiftUI

struct WeekdayView: View {
    var days: [String]
    var selectedDays: [Bool]

    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<days.count, id: \.self) { index in
                Circle()
                    .stroke(selectedDays[index] ? Color.green : Color.gray, lineWidth: 2)
                    .frame(width: 40, height: 50)
                    .overlay(
                        Text(days[index])
                            .font(.caption)
                            .foregroundColor(selectedDays[index] ? .blue : .gray)
                    )
            }
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    WeekdayView(days: ["L", "M", "M", "J", "V", "S", "D"], selectedDays: [false, true, true, true, true, false, false])
}
