import SwiftUI

struct MenuView: View {

    let newGameAction: () -> Void
    let resetScoreAction: () -> Void
    @State private var showConfirmation = false

    var body: some View {
        VStack {
            HeaderBarTitle(title: "MENU")
            Spacer()
            VStack(alignment: .center, spacing: 16) {
                ActionButton(title: "NEW GAME", action: newGameAction)
                    .accessibility(identifier: "newGameButton")
                ActionButton(title: "RESET BEST SCORE") { self.showConfirmation.toggle() }
                    .accessibility(identifier: "resetBestScoreButton")
            }
            .buttonBorderShape(.roundedRectangle(radius: 10.0))
            Spacer()
        }
        .background(Color.white)
        .alert(isPresented: $showConfirmation) { confirmationAlert }
    }
}

extension MenuView {

    private var confirmationAlert: Alert {
        Alert(title: confirmationMessage,
              primaryButton: resetScoreAlertButton,
              secondaryButton: .cancel())
    }

    private var confirmationMessage: Text {
        Text("Are you sure you want to erase your best score?")
    }

    private var resetScoreAlertButton: Alert.Button {
        .default(Text("Yeah, whatever"), action: self.resetScoreAction)
    }
}

struct MenuView_Previews: PreviewProvider {

    static var previews: some View {
        Group {
            MenuView(
                newGameAction: {},
                resetScoreAction: {}
            )
        }
    }
}
