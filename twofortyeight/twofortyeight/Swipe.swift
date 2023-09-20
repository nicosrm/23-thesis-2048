import UIKit

class Swipe: UISwipeGestureRecognizer {

    private var target: InvokeTarget

    init(_ direction: Direction, action: @escaping () -> Void) {
        self.target = InvokeTarget(action: action)
        super.init(target: target, action: #selector(target.invoke))
        self.direction = direction
    }
}

class InvokeTarget: NSObject {

    private var action: () -> Void

    init(action: @escaping () -> Void) {
        self.action = action
        super.init()
    }

    @objc public func invoke() {
        self.action()
    }
}
