part of string_helpers;

extension ExtensionsStringCaseAssertion on String {
  ///[isUpperCase] check if the entire characters is majuscule.
  ///```dart
  /// 'Dart'.isUpperCase // false
  /// 'DARt'.isUpperCase // false
  /// 'DART'.isUpperCase // true
  ///```
  bool get isUpperCase => funIsUpperCase(this);

  ///[isLowerCase] check if the entire characters is minuscule.
  ///```dart
  /// 'Dart'.isLowerCase // false
  /// 'darT'.isLowerCase // false
  /// 'dart'.isLowerCase // true
  ///```
  bool get isLowerCase => funIsLowerCase(this);

  ///[firstIsUpperCase] check if the first character is majuscule.
  ///```dart
  /// 'dart'.firstIsUpperCase // false
  /// 'dART'.firstIsUpperCase // false
  /// 'Dart'.firstIsUpperCase // true
  ///```
  bool get firstIsUpperCase => funFirstIsUpperCase(this);

  ///[lastIsUpperCase] check if the last character is majuscule.
  ///```dart
  /// 'dart'.lastIsUpperCase // false
  /// 'DARt'.lastIsUpperCase // false
  /// 'darT'.lastIsUpperCase // true
  ///```
  bool get lastIsUpperCase => funLastIsUpperCase(this);

  ///[firstIsLowerCase] check if the first character is minuscule.
  ///```dart
  /// 'DART'.firstIsLowerCase // false
  /// 'Dart'.firstIsLowerCase // false
  /// 'darT'.firstIsLowerCase // true
  ///```
  bool get firstIsLowerCase => funFirstIsLowerCase(this);

  ///[lastIsLowerCase] check if the last character is minuscule.
  ///```dart
  /// DART'.lastIsLowerCase // false
  /// darT'.lastIsLowerCase // false
  /// Dart'.lastIsLowerCase // true
  ///```
  bool get lastIsLowerCase => funLastIsLowerCase(this);

  ///[charAtIsUpperCase()] check if character at [index] is majuscule.
  ///```dart
  /// 'Dart'.charAtIsUpperCase(1) // false
  /// 'dArt'.charAtIsUpperCase(1) // true
  ///```
  bool charAtIsUpperCase(int index) => funCharAtIsUpperCase(this, index);

  ///[charAtIsLowerCase()] check if character at [index] is minuscule.
  ///```dart
  /// 'dArt'.charAtIsLowerCase(1) // false
  /// 'DaRT'.charAtIsLowerCase(1) // true
  ///```
  bool charAtIsLowerCase(int index) => funCharAtIsLowerCase(this, index);
}
