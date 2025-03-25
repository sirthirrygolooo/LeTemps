import SwiftUI

struct ProgressBarView: View {
    var day: String
    var percentage: Double
    var color: Color
    var icon: String
    var time: String

    var body: some View {
        HStack {
            Text(day)
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(height: 20)
                    .foregroundColor(Color.gray.opacity(0.3))
                    .cornerRadius(10)

                Rectangle()
                    .frame(width: CGFloat(percentage / 100) * UIScreen.main.bounds.width * 0.7, height: 15)
                    .foregroundColor(color)
                    .cornerRadius(10)
            }

            HStack {
                Image(systemName: icon)
                    .foregroundColor(.white)
                Text(time)
                    .foregroundColor(.white)
            }
            .padding(.leading, 8)
            .background(color)
            .cornerRadius(10)
            .padding(.leading, 4)
        }
    }
}

#Preview {
    ProgressBarView(day:"L",percentage: 10, color: .blue, icon: "checkmark", time: "22min")
}
