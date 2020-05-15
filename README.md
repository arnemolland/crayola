<img src="https://github.com/arnemolland/snack/blob/master/assets/snack.png?raw=true" alt="snack" style="zoom:1%;float: left;" height="72" />

![snack](https://github.com/arnemolland/crayola/workflows/Flutter%20CI/badge.svg) ![pub](https://img.shields.io/pub/v/crayola.svg) [![style: pedantic](https://img.shields.io/badge/style-pedantic-9cf)](https://github.com/dart-lang/pedantic) ![license](https://img.shields.io/github/license/arnemolland/crayola.svg)

A plugin for customising Flutter desktop window properties. Currently macOS only.

## Usage

Set title bar color:

```dart
Crayloa.setTitleBarColor(Colors.blue);
```

Set tile bar color, with platform-default transparency:

```dart
Crayola.setTitleBarColor(Colors.blue, false);
```

Set title text visibility:

```dart
Crayola.setTitleVisbility(false);
```

Set the title bar visiblity (removes the entire bar):

```dart
Crayola.setTitleBarVisiblity(false);
```
