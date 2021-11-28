part of string_helpers;

extension ExtensionsStringCaseLower on String {
  ///Converts first character in this string to lower case.
  ///
  /// If the first character is already in lower case, this function returns `this`.
  /// ```dart
  /// 'Dart'.firstToLowerCase; // 'dart'
  /// 'abc'.firstToLowerCase; // 'abc'
  /// ```
  String get firstToLowerCase => getFirstToLowerCase(this);

  ///Converts last character in this string to lower case.
  ///
  /// If the last character is already in lower case, this function returns `this`.
  /// ```dart
  /// 'Dart'.firstToLowerCase; // 'dart'
  /// 'abc'.firstToLowerCase; // 'abc'
  /// ```
  String get lastToLowerCase => getLastToLowerCase(this);

  ///Converts first character in this string to lower case, and first character of next word to upper case.
  ///
  ///```dart
  /// 'LOWER CAMEL CASE'.toLowerCamelCase; // 'lower Camel Case'
  ///```
  String get toLowerCamelCase => getToLowerCamelCase(this);

  /// **toLowerSnakeCase** known as **toLowerUnderscoreCase**.
  ///
  ///Converts all characters in this string to lower case, then replace white space with underscore `_`.
  ///
  ///```dart
  /// 'lower underscore case'.toLowerSnakeCase; // 'lower_underscore_case'
  /// 'LOWER UNDERSCORE CASE'.toLowerSnakeCase; // 'lower_underscore_case'
  ///```
  String get toLowerSnakeCase => getToLowerSnakeCase(this);
}
