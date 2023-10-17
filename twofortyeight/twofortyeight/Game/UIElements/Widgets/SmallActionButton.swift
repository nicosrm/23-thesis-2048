import SwiftUI

struct SmallActionButton: View {

    let title: String
    let action: () -> Void
    var enabled: Bool

    private var backgroundColor: Color {
        enabled ? Color.orange : Color(UIColor.orange.withAlphaComponent(0.5))
    }

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 19, weight: .black, design: .rounded))
                .padding(.horizontal, 20)
                .padding(.vertical, 9)
        }
        #if !os(visionOS)
        .cornerRadius(4)
        .background(backgroundColor)
        #else
        .background(backgroundColor, in: .capsule)
        #endif
        .foregroundColor(enabled ? Color.white : Color(UIColor.white.withAlphaComponent(0.5)))
        .disabled(!enabled)
    }
}

struct SmallActionButton_Previews: PreviewProvider {

    static var previews: some View {
        SmallActionButton(title: "MENU", action: {}, enabled: false)
    }
}
