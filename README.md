# AboutThisApp [![CI](https://github.com/hexedbits/AboutThisApp/workflows/CI/badge.svg)](https://github.com/hexedbits/AboutThisApp/actions)

*A standard, customizable "About This App" panel for any Mac app*

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fhexedbits%2FAboutThisApp%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/hexedbits/AboutThisApp) <br> [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fhexedbits%2FAboutThisApp%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/hexedbits/AboutThisApp)

## About

This library provides a standard "About This App" panel for Mac apps. It requires **zero configuration by default** for typical projects, and it can be easily customized.

AppKit provides a default "About This App" panel via [`NSApp.orderFrontStandardAboutPanel()`](https://developer.apple.com/documentation/appkit/nsapplication/1428479-orderfrontstandardaboutpanel), but customization is limited.

This component is used in [Red Eye](https://www.hexedbits.com/redeye/) and [Lucifer](https://www.hexedbits.com/lucifer/).

<img src="https://raw.githubusercontent.com/hexedbits/AboutThisApp/main/screenshots/screenshot_dark.png" width="50%" />

<img src="https://raw.githubusercontent.com/hexedbits/AboutThisApp/main/screenshots/screenshot_light.png" width="50%" />

## Usage

```swift
let metadata = AppMetadata() // customize if desired

let panel = AboutThisAppPanel(metadata: metadata)

panel.makeKeyAndOrderFront(nil)
```

## Requirements

- macOS 10.14+
- Swift 5.5+
- Xcode 13.0+
- [SwiftLint](https://github.com/realm/SwiftLint)

## Installation

### [CocoaPods](http://cocoapods.org)

````ruby
pod 'AboutThisApp', '~> 1.0.0'
````

### [Swift Package Manager](https://swift.org/package-manager/)

Add `AboutThisApp` to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/hexedbits/AboutThisApp", from: "1.0.0")
]
```

Alternatively, you can add the package [directly via Xcode](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

## Documentation

You can read the [documentation here](https://hexedbits.github.io/AboutThisApp). Generated with [jazzy](https://github.com/realm/jazzy). Hosted by [GitHub Pages](https://pages.github.com).

## Contributing

Interested in making contributions to this project? Please review the guides below.

- [Contributing Guidelines](https://github.com/hexedbits/.github/blob/main/CONTRIBUTING.md)
- [Code of Conduct](https://github.com/hexedbits/.github/blob/main/CODE_OF_CONDUCT.md)
- [Support and Help](https://github.com/hexedbits/.github/blob/main/SUPPORT.md)
- [Security Policy](https://github.com/hexedbits/.github/blob/main/SECURITY.md)

Also consider [sponsoring this project](https://github.com/sponsors/jessesquires) or [buying my apps](https://www.hexedbits.com)! ✌️

## Credits

Created and maintained by [**Jesse Squires**](https://www.jessesquires.com).

## License

Released under the MIT License. See `LICENSE` for details.

> **Copyright &copy; 2020-present Jesse Squires.**
