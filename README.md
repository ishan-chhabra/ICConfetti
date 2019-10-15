<div align="center">
  <img alt="Logo" src="https://raw.githubusercontent.com/ishan-chhabra/ICConfetti/master/Screens/ic-logo.svg?sanitize=true" height="56" />
</div>
<div align="center">
  <img alt="Logo" src="https://raw.githubusercontent.com/ishan-chhabra/ICConfetti/master/Screens/icconfetti-logo.png" height="80" />
</div>

<br>
<p align="center">
It's raining confetti. 🎉
</p>
<p align="center">
crafted with <span style="color: #8b0000;">&hearts;</span> by Ishan Chhabra
</p>
<p align="center">
    <img src="https://img.shields.io/badge/swift-5.0-red" alt="swift 5.0"/>
    <img src="https://img.shields.io/badge/pod-0.0.1-yellowgreen" alt="pod 0.0.1"/>
    <img src="https://img.shields.io/badge/license-MIT-brightgreen" alt="license MIT"/>
    <img src="https://img.shields.io/badge/platform-iOS-lightgrey" alt="platform IOS"/>
</p>
<p align="center">
    <img src="https://img.shields.io/badge/author-Ishan_Chhabra-blue" alt="author Ishan Chhabra"/>
</p>

## Description 🗣
Adding delight with confetti. `ICConfetti` lets you rain confetti in your views. 🎉

## Preview 📺
<div align="center">
  <img alt="Logo" src="https://raw.githubusercontent.com/ishan-chhabra/ICConfetti/master/Screens/screen.gif" width="220" />
</div>

## Code 👨‍💻

**Snippet # 1:** It's raining confetti in two lines of code. 🌧

```swift

var icConfetti: ICConfetti!

override func viewDidLoad() {
  super.viewDidLoad()
  icConfetti = ICConfetti()
  icConfetti.rain(in: self.view)
}
```

**Snippet # 2:** Don't forget to let the rain up! ☀️

```swift
override func viewWillDisappear(_ animated: Bool) {
  super.viewWillDisappear(animated)
  icConfetti.stopRaining()
}
```

**Snippet # 3:** Set up the visual aspect! 💄
```swift
// Customize the colors... 🎨
icConfetti.colors = [.red, .green, .yellow, .blue]

// Tailor the confetti images. White template images work the best. 🖼
icConfetti.images = [
  UIImage(named: "Box")!,
  UIImage(named: "Circle")!,
  UIImage(named: "Triangle")!,
  UIImage(named: "Spiral")!
]

// Throttle the velocities... 🏎
icConfetti.velocities = [100, 128, 144, 512]
```
## Installation 🔧

### CocoaPods
`ICConfetti` is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ICConfetti'
```

## Author 🙏🏻

**Web**: [Ishan Chhabra](https://ishanchhabra.com)\
**Twitter**: [@chh_abracadabra](https://twitter.com/chh_abracadabra)\
**Medium**: [@chh_abracadabra](https://medium.com/@chh_abracadabra)

## License 📜

`ICConfetti` is available under the MIT license. See the LICENSE file for more info.
