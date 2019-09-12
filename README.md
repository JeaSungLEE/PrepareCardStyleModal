# PrepareCardStyleModal
[한국어로 보기](https://github.com/JeaSungLEE/PrepareCardStyleModal/blob/master/READMEKR.md)

Easily change cardstyle modal to fullscreen or prevent slides from closing in iOS13.

## Introduce
<img width="200" alt="image" src="https://github.com/JeaSungLEE/PrepareCardStyleModal/blob/master/Images/origin.gif">
Modal changed to card style in iOS13 and now works like the image above.
If you are not yet ready for modal style, you have to do a lot of code.
I created a library to respond with one line of code.

There are two actions as below.
Makes it appear full screen or prevents the closing operation.
<img width="200" alt="image" src="https://github.com/JeaSungLEE/PrepareCardStyleModal/blob/master/Images/fullscreen.gif">
<img width="200" alt="image" src="https://github.com/JeaSungLEE/PrepareCardStyleModal/blob/master/Images/preventslide.gif">

## Getting Started
### Using Cocoapods
```
  pod 'PrepareCardStyleModal'
```
### Using Carthage
```
   github "JeaSungLEE/PrepareCardStyleModal"
```

## How to Using
First import into the app delegate.
```swift
import PrepareCardStyleModal
```
Just add one of the two codes below to didFinishLaunchingWithOptions.
- open fullScreen
```swift
UIViewController.presentFullScreenSwizzledMethod
```
- prevent Dissmiss
```swift
UIViewController.preventDissmissSwizzledMethod
```
very ⭐️ easy

## Authors

* 🇰🇷 **JeasungLee** - *Initial work* - [JeasungLee](https://github.com/JeaSungLEE)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
