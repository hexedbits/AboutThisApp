# AboutThisApp

*A standard "About This App" view for any Mac app*

## About

This library provides a standard "About This App" view for Mac apps. It requires **zero configuration by default** for typical projects, but it can also be easily customized.

AppKit provides a default "About This App" view for regular windowed applications, but you cannot customize it. It is also inacessible for apps that live only in the menu bar.

This component is used in [Red Eye](https://www.hexedbits.com/redeye/) and [Lucifer](https://www.hexedbits.com/lucifer/).

> TODO: screenshots

## Usage

```swift
let metadata = AppMetadata() // customize if desired

let panel = AboutThisAppPanel(metadata: metadata)

panel.makeKeyAndOrderFront(nil)
```

## Requirements

- macOS 10.14+
- Swift 5+
- Xcode 11+
- SwiftLint

## Installation

> TODO

## Documentation

> TODO

## Contributing

Interested in making contributions to this project? Please review the guides below.

- [Contributing Guidelines](https://github.com/jessesquires/.github/blob/master/CONTRIBUTING.md)
- [Code of Conduct](https://github.com/jessesquires/.github/blob/master/CODE_OF_CONDUCT.md)
- [Support and Help](https://github.com/jessesquires/.github/blob/master/SUPPORT.md)
- [Security Policy](https://github.com/jessesquires/.github/blob/master/SECURITY.md)

Also, consider [sponsoring this project](https://www.jessesquires.com/sponsor/) or [buying my apps](https://www.hexedbits.com)! ✌️

## Credits

Created and maintained by [**@jesse_squires**](https://twitter.com/jesse_squires).

## License

Released under the MIT License. See `LICENSE` for details.

>**Copyright &copy; 2020-present Jesse Squires.**
