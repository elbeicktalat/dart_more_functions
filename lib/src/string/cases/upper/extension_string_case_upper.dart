part of string_helpers;

extension ExtensionsStringCaseUpper on String {
  ///Converts first character in this string to upper case.
  ///
  /// If the first character is already in upper case, this function returns `this`.
  /// ```dart
  /// 'dart'.firstToUpperCase; // 'Dart'
  /// 'abc'.firstToUpperCase; // 'Abc'
  /// ```
  String get firstToUpperCase => getFirstToUpperCase(this);

  ///Converts last character in this string to upper case.
  ///
  /// If the last character is already in upper case, this function returns `this`.
  /// ```dart
  /// 'dart'.firstToLowerCase; // 'darT'
  /// 'abc'.firstToLowerCase; // 'abC'
  /// ```
  String get lastToUpperCase => getLastToUpperCase(this);

  ///Converts first character in this string to upper case, and first character of next word to upper case.
  ///
  ///```dart
  /// 'upper camel case'.toLowerCamelCase; // 'Upper Camel Case'
  ///```
  String get toUpperCamelCase => getToUpperCamelCase(this);

  /// **toUpperSnakeCase** known as **toUpperUnderscoreCase**.
  ///
  ///Converts all characters in this string to upper case, then replace white space with underscore `_`.
  ///
  ///```dart
  /// 'upper underscore case'.toLowerSnakeCase; // 'UPPER_UNDERSCORE_CASE'
  /// 'LOWER UNDERSCORE CASE'.toLowerSnakeCase; // 'UPPER_UNDERSCORE_CASE'
  ///```
  String get toUpperSnakeCase => getToUpperSnakeCase(this);
}
