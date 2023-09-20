import Foundation

precedencegroup ForwardApplication {
    associativity: left
}

infix operator |>: ForwardApplication

// swiftlint:disable identifier_name
public func |> <A, B>(x: A, f: (A) -> B) -> B {
    return f(x)
}
// swiftlint:enable identifier_name
