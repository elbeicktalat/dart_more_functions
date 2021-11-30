// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringCaseAssertion on String {
  ///[isUpperCase] check if the entire characters is majuscule.
  ///```dart
  /// 'Dart'.isUpperCase // false
  /// 'DARt'.isUpperCase // false
  /// 'DART'.isUpperCase // true
  ///```
  bool get isUpperCase => this == toUpperCase();

  ///[isLowerCase] check if the entire characters is minuscule.
  ///```dart
  /// 'Dart'.isLowerCase // false
  /// 'darT'.isLowerCase // false
  /// 'dart'.isLowerCase // true
  ///```
  bool get isLowerCase => this == toLowerCase();

  ///[firstIsUpperCase] check if the first character is majuscule.
  ///```dart
  /// 'dart'.firstIsUpperCase // false
  /// 'dART'.firstIsUpperCase // false
  /// 'Dart'.firstIsUpperCase // true
  ///```
  bool get firstIsUpperCase => firstChar == firstChar.toUpperCase();

  ///[lastIsUpperCase] check if the last character is majuscule.
  ///```dart
  /// 'dart'.lastIsUpperCase // false
  /// 'DARt'.lastIsUpperCase // false
  /// 'darT'.lastIsUpperCase // true
  ///```
  bool get lastIsUpperCase => lastChar == lastChar.toUpperCase();

  ///[firstIsLowerCase] check if the first character is minuscule.
  ///```dart
  /// 'DART'.firstIsLowerCase // false
  /// 'Dart'.firstIsLowerCase // false
  /// 'darT'.firstIsLowerCase // true
  ///```
  bool get firstIsLowerCase => firstChar == firstChar.toLowerCase();

  ///[lastIsLowerCase] check if the last character is minuscule.
  ///```dart
  /// DART'.lastIsLowerCase // false
  /// darT'.lastIsLowerCase // false
  /// Dart'.lastIsLowerCase // true
  ///```
  bool get lastIsLowerCase => lastChar == lastChar.toLowerCase();

  ///[charAtIsUpperCase] check if character at [index] is majuscule.
  ///```dart
  /// 'Dart'.charAtIsUpperCase(1) // false
  /// 'dArt'.charAtIsUpperCase(1) // true
  ///```
  bool charAtIsUpperCase(int index) =>
      charAt(index) == charAt(index).toUpperCase();

  ///[charAtIsLowerCase] check if character at [index] is minuscule.
  ///```dart
  /// 'dArt'.charAtIsLowerCase(1) // false
  /// 'DaRT'.charAtIsLowerCase(1) // true
  ///```
  bool charAtIsLowerCase(int index) =>
      charAt(index) == charAt(index).toLowerCase();
}
