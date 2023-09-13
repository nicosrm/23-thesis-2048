# 2048

This is a fork of [`caiobzen/2048-swiftui`](https://github.com/caiobzen/2048-swiftui). The code will be extended to run on visionOS. The goal is to validate the conformancy of the code with Apple's [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/) for visionOS.

## Game

2048 is a single-player sliding block puzzle game designed by Italian web developer [Gabriele Cirulli](https://gabrielecirulli.com). The game's objective is to slide numbered tiles on a grid to combine them to create a tile with the number 2048. However, one can continue to play the game after reaching the goal, creating tiles with larger numbers.

## Requirements

- iOS 17+
- [XCode 15](https://developer.apple.com/xcode/)
- [Bazel](https://bazel.build/)

## Setup

Run the following commands to build SwiftLint and the Xcode project.

```shell
bazel build -c opt @SwiftLint//:swiftlint

bazel run swiftlint_xcodeproj
```
