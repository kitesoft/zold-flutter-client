# zold-flutter-client

[![Managed by Zerocrat](https://www.0crat.com/badge/CGC59KB9B.svg)](https://www.0crat.com/p/CGC59KB9B)
[![Donate via Zerocracy](https://www.0crat.com/contrib-badge/CGC59KB9B.svg)](https://www.0crat.com/contrib/CGC59KB9B)
[![DevOps By Rultor.com](http://www.rultor.com/b/ammaratef45/zold-flutter-client)](http://www.rultor.com/p/ammaratef45/zold-flutter-client)

[![PDD status](http://www.0pdd.com/svg?name=ammaratef45/zold-flutter-client)](http://www.0pdd.com/p?name=ammaratef45/zold-flutter-client)
[![CircleCI](https://circleci.com/gh/ammaratef45/zold-flutter-client/tree/master.svg?style=svg)](https://circleci.com/gh/ammaratef45/zold-flutter-client/tree/master)

Zold wallet built in flutter.

# Download
Android Beta version can be downloaded from [here](https://play.google.com/store/apps/details?id=com.ammar.zold.wallet)

iOS Beta version is not available for public right now, to join internal testing, Drop a message in [telegram](https://t.me/zold_io)

### Features

* [x] Pull wallet.
* [x] See Transactions History.
* [x] Generate QR code to accept payment.
* [x] Pay by scanning QR or by entering data.
* [ ] Login with fingerprint sensor.
* [x] Restart wallet.

## Getting Started with Flutter

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

# How to contribute

## Installation ##

  - Install [Android Studio](https://developer.android.com/studio) for building Android.
  - Install [xCode](https://developer.apple.com/xcode/) for building iOS.
  - Install Flutter, See [Getting Started with Flutter](#getting-started-with-flutter).
  - Install PDD, [More about PDD here](https://github.com/yegor256/0pdd).
  - We prefer using [VSCode](https://code.visualstudio.com/)
  
## Building ##

Before running tests, create a file `zold_wallet/test/secret.dart`
execute all commands in the die `zold_wallet`
  - Run `flutter test` to execute tests.
  - Run `flutter run` to try it live on running emulator or usb connected device.
  - Run `flutter build apk` to generate APK file.
  - Run `flutter build ios` to package iOS app.
  
## Submiting a PR ##

Before submitting a PR make sure all these commands work.
 - `flutter test`
 - `flutter build apk`
 - `pdd -f /dev/null -v`
 
