import SwiftUI

struct ActionButton: View {

    let title: String
    let action: () -> Void

    var backgroundColor = Color.orange

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 20, weight: .black, design: .rounded))
                .foregroundColor(.white)
                .padding(12)
            #if !os(visionOS)
                .background(backgroundColor)
                .cornerRadius(6)
            #endif
        }
        #if os(visionOS)
        .tint(backgroundColor)
        #endif
    }
}

struct ActionButton_Previews: PreviewProvider {

    static var previews: some View {
        ActionButton(title: "NEW GAME") { }
    }
}
