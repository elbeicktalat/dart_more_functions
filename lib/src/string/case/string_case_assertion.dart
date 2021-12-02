// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringCaseAssertion on String {
  ///[isUpperCase] Check if the entire string is majuscule.
  ///```dart
  /// 'Dart'.isUpperCase // false
  /// 'DARt'.isUpperCase // false
  /// 'DART'.isUpperCase // true
  ///```
  bool get isUpperCase => this == toUpperCase();

  ///[isLowerCase] Check if the entire string is minuscule.
  ///```dart
  /// 'Dart'.isLowerCase // false
  /// 'darT'.isLowerCase // false
  /// 'dart'.isLowerCase // true
  ///```
  bool get isLowerCase => this == toLowerCase();

  ///[firstCharIsUpperCase] Check if the first character is majuscule.
  ///```dart
  /// 'dart'.firstIsUpperCase // false
  /// 'dART'.firstIsUpperCase // false
  /// 'Dart'.firstIsUpperCase // true
  ///```
  bool get firstCharIsUpperCase => firstChar == firstChar.toUpperCase();

  ///[lastCharIsUpperCase] Check if the last character is majuscule.
  ///```dart
  /// 'dart'.lastIsUpperCase // false
  /// 'DARt'.lastIsUpperCase // false
  /// 'darT'.lastIsUpperCase // true
  ///```
  bool get lastCharIsUpperCase => lastChar == lastChar.toUpperCase();

  ///[firstCharIsLowerCase] Check if the first character is minuscule.
  ///```dart
  /// 'DART'.firstIsLowerCase // false
  /// 'Dart'.firstIsLowerCase // false
  /// 'darT'.firstIsLowerCase // true
  ///```
  bool get firstCharIsLowerCase => firstChar == firstChar.toLowerCase();

  ///[lastCharIsLowerCase] Check if the last character is minuscule.
  ///```dart
  /// DART'.lastIsLowerCase // false
  /// darT'.lastIsLowerCase // false
  /// Dart'.lastIsLowerCase // true
  ///```
  bool get lastCharIsLowerCase => lastChar == lastChar.toLowerCase();

  ///[charAtIsUpperCase] Check if character at [index] is majuscule.
  ///```dart
  /// 'Dart'.charAtIsUpperCase(1) // false
  /// 'dArt'.charAtIsUpperCase(1) // true
  ///```
  bool charAtIsUpperCase(int index) =>
      charAt(index) == charAt(index).toUpperCase();

  ///[charAtIsLowerCase] Check if character at [index] is minuscule.
  ///```dart
  /// 'dArt'.charAtIsLowerCase(1) // false
  /// 'DaRT'.charAtIsLowerCase(1) // true
  ///```
  bool charAtIsLowerCase(int index) =>
      charAt(index) == charAt(index).toLowerCase();

  ///[firstWordIsUpperCase] Check if the first word characters is majuscule.
  ///```dart
  /// 'hello world!'.firstWordIsUpperCase // false
  /// 'Hello world!'.firstWordIsUpperCase // false
  /// 'HELLO world!'.firstWordIsUpperCase // true
  ///```
  bool get firstWordIsUpperCase => firstWord == firstWord.toUpperCase();

  ///[firstWordIsUpperCase] Check if the first word characters is majuscule.
  ///```dart
  /// 'hello world!'.lastWordIsUpperCase // false
  /// 'hello World!'.lastWordIsUpperCase // false
  /// 'hello WORLD!'.lastWordIsUpperCase // true
  ///```
  bool get lastWordIsUpperCase => lastWord == lastWord.toUpperCase();

  ///[firstWordIsLowerCase] Check if the first word characters is minuscule.
  ///```dart
  /// 'hello world!'.firstWordIsLowerCase // true
  /// 'Hello world!'.firstWordIsLowerCase // false
  /// 'HELLO world!'.firstWordIsLowerCase // false
  ///```
  bool get firstWordIsLowerCase => firstWord == firstWord.toLowerCase();

  ///[lastWordIsLowerCase] Check if the last word characters is minuscule.
  ///```dart
  /// 'hello WORLD!'.lastWordIsLowerCase // false
  /// 'hello World!'.lastWordIsLowerCase // false
  /// 'hello world!'.lastWordIsLowerCase // true
  ///```
  bool get lastWordIsLowerCase => lastWord == lastWord.toLowerCase();

  ///[wordAtIsUpperCase] Check if word characters at [index] is majuscule.
  ///```dart
  /// 'hello amazing world!'.wordAtIsUpperCase(1); // false
  /// 'hello Amazing world!'.wordAtIsUpperCase(1); // false
  /// 'hello AMAZING world!'.wordAtIsUpperCase(1); // true
  ///```
  bool wordAtIsUpperCase(int index) =>
      wordAt(index) == wordAt(index).toUpperCase();

  ///[wordAtIsLowerCase] Check if word characters at [index] is minuscule.
  ///```dart
  /// 'hello AMAZING world!'.wordAtIsUpperCase(1); // false
  /// 'hello Amazing world!'.wordAtIsUpperCase(1); // false
  /// 'hello amazing world!'.wordAtIsUpperCase(1); // true
  ///```
  bool wordAtIsLowerCase(int index) =>
      wordAt(index) == wordAt(index).toLowerCase();
}
