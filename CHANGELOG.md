# CHANGELOG

The changelog for `AboutThisApp`. Also see the [releases](https://github.com/hexedbits/AboutThisApp/releases) on GitHub.

--------------------------------------

2.0.0
-----

This release closes the [2.0.0 milestone](https://github.com/hexedbits/AboutThisApp/milestone/3?closed=1).

- Minimum macOS 11.0 now required. (#69)
- Fix copyright text truncation bug. (#5)
- Rewrite view in SwiftUI. You can now use the SwiftUI `AboutThisAppView` directly, if desired. AppKit clients can continue to use `AboutThisAppPanel`.


1.1.0
-----

This release closes the [1.1.0 milestone](https://github.com/hexedbits/AboutThisApp/milestone/2?closed=1).

- Upgraded to Swift 5.5 and Xcode 13 (#30)
- Various project infra updates (#30)
- Default value of `AppMetadata.urlColor` is now your app accent color (`"AccentColor"` in asset catalog) if present, otherwise `.linkColor` (#13)


1.0.1
-----

This release closes the [1.0.1 milestone](https://github.com/hexedbits/AboutThisApp/milestone/1?closed=1).

- Upgraded to Swift 5.3 and Xcode 12


1.0.0
-----

Initial release. [Documentation here](https://hexedbits.github.io/AboutThisApp/).
