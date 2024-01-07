[![pub package](https://img.shields.io/pub/v/scale.svg)](https://pub.dartlang.org/packages/scale)
[![Telegram](https://img.shields.io/badge/chat-telegram-0088cc)](https://t.me/+NvUXzshmIg44N2M0)
[![Youtube](https://img.shields.io/badge/subscribe-youtube-c4302b)](https://www.youtube.com/@AkDebuging)
[![Twitter](https://img.shields.io/badge/follow-x-000000)](https://x.com/akdebuging)
[![Coffee](https://img.shields.io/badge/buy%20me%20a-coffee-orange)](https://www.buymeacoffee.com/akdebuging)

<img src="https://raw.githubusercontent.com/Abedalkareem/review_manager/main/example/assets/logo.png" width="200"/>

A simple plugin to show native store review dialogs.

## Getting Started

1- Simply add the following line to your pubspec.yaml file:  
``` yaml
dependencies:
  review_manager: any       # <-- Add this line
```

2- When you would like to ask the user for a review call `requestReviewIfAppropriate`.

```dart
_reviewManagerPlugin.requestReviewIfAppropriate();
```

## Important!

- On iOS in debug mode the review dialog will always show, but in production it's different, it will not always show, to know more check [this](https://developer.apple.com/documentation/storekit/skstorereviewcontroller/3566727-requestreview).
- On Android it's better to go check [this](https://stackoverflow.com/questions/63286540/play-core-in-app-review-api-not-showing-the-review-activity) and [this](https://developer.android.com/guide/playcore/in-app-review).


## Support me 🚀  

You can support this project by:  

1- Checking my [apps](https://apps.apple.com/us/developer/id928910207).  
2- Star the repo.  
3- Share the repo with your friends.  
4- [Buy Me A Coffee](https://www.buymeacoffee.com/akdebuging).  

## Follow me ❤️  

[Facebook](https://www.facebook.com/akdebuging/) | [Twitter](https://twitter.com/akdebuging) | [Instagram](https://instagram.com/abedalkareemomreyh/) | [Youtube](https://www.youtube.com/@akdebuging)