# PrepareCardStyleModal
[한국어로 보기](https://github.com/JeaSungLEE/PrepareCardStyleModal/blob/master/READMEKR.md)

Easily change cardstyle modal to fullscreen or prevent slides from closing in iOS13.

## Introduce
<img width="200" alt="image" src="https://github.com/JeaSungLEE/PrepareCardStyleModal/blob/master/Images/origin.gif">
iOS13에서 모달이 카드스타일로 변경되면서 위의 이미지처럼 동작 하게 되었습니다.
아직 모달스타일에 대비가 되지 않은 분들은 많은 코드 작업을 해야합니다.
코드 한줄로 대응 하기 위해 라이브러리를 만들었습니다.

아래와 같이 두가지 동작이 있습니다.
전체화면으로 나타나게하거나, 닫힘동작을 방지하도록 합니다.
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
app delegate에 import를 먼저 합니다.
```swift
import PrepareCardStyleModal
```
didFinishLaunchingWithOptions에 아래 두 코드중 하나를 선택하여 추가하시면 됩니다.
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
