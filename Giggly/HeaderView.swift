import SwiftUI

struct HeaderView: View {
    var body: some View {
        Text("Giggly")
            .font(.custom("Avenir Next", size: 36))
            .fontWeight(.bold)
            .foregroundColor(Color(.systemTeal))
            .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 2)
            .padding(.top, 40)
    }
}
