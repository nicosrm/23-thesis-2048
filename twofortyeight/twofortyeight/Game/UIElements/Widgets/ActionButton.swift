import SwiftUI

struct ActionButton: View {

    let title: String
    let action: () -> Void

    var backgroundColor = Color.orange

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 20, weight: .black, design: .rounded))
                .padding(12)
        }
        #if !os(visionOS)
        .cornerRadius(6)
        .background(backgroundColor)
        #else
        .background(backgroundColor, in: .rect(cornerRadius: 10.0))
        #endif
        .foregroundColor(.white)
    }
}

struct ActionButton_Previews: PreviewProvider {

    static var previews: some View {
        ActionButton(title: "NEW GAME") { }
    }
}
