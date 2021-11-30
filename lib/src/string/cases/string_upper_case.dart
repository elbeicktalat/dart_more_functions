// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringUpperCase on String {
  ///[firstCharToUpperCase] Capitalize the first character of the this [string].
  ///
  ///In case [allWords] set to true it will capitalize the first character of all words,
  ///by default [allWords] is false.
  ///
  /// Example:
  ///```dart
  /// //capitalize only first character of first word.
  /// 'first char to upper'.firstCharToUpperCase(); // 'First char to upper'
  ///
  /// //capitalize only first character of every word.
  /// 'first char to upper'.firstCharToUpperCase(allWords: true); // 'First Char To Upper'
  ///```
  String firstCharToUpperCase({
    bool allWords = false,
  }) {
    String subject = trim();
    if (allWords) {
      final List<String> words = subject.split(' ');
      final List<String> capitalized = [];
      for (String word in words) {
        capitalized.add(word.firstCharToUpperCase());
      }
      return capitalized.join(' ');
    }
    return subject.firstChar.toUpperCase() + subject.substring(1);
  }

  ///[lastCharToUpperCase] Capitalize the last character of the this [string].
  ///
  ///In case [allWords] set to true it will capitalize the last character of all words,
  ///by default [allWords] is false.
  ///
  /// Example:
  ///```dart
  /// //capitalize only last character of first word.
  /// 'last char to upper'.lastCharToUpperCase(); // 'first char to uppeR'
  ///
  /// //capitalize only last character of every word.
  /// 'last char to upper'.lastCharToUpperCase(allWords: true); // 'lasT chaR tO uppeR'
  ///```
  String lastCharToUpperCase({
    bool allWords = false,
  }) {
    String subject = trim();
    if (allWords) {
      final List<String> words = subject.split(' ');
      final List<String> capitalized = [];
      for (String word in words) {
        capitalized.add(word.lastCharToUpperCase());
      }
      return capitalized.join(' ');
    }
    return subject.substring(0, subject.lastCharIndex) +
        subject.lastChar.toUpperCase();
  }

  ///[toUpperCamelCase] Capitalize the first character words of the this [string].
  ///
  ///By default words will have a whitespace between each other,
  /// if [attached] set to true the result wil be concatenate.
  ///
  /// Also you are able to chios the character in between words by using [betweenWords].
  /// Examples:
  ///
  ///```dart
  /// 'upper camel case'.toUpperCamelCase(); // 'Upper Camel Case'
  /// 'upper camel case'.toUpperCamelCase(attached: true); // 'UpperCamelCase'
  /// 'upper camel case'.toUpperCamelCase(attached: true, betweenWords: '/'); // 'Upper/Camel/Case'
  /// 'upper camel case'.toUpperCamelCase(attached: true, betweenWords: '//'); // 'Upper//Camel//Case'
  ///```

  String toUpperCamelCase({
    bool attached = false,
    String betweenWords = '',
  }) {
    String subject = trim().toLowerCase();
    final List<String> words = subject.split(' ');
    final List<String> capitalized = [];
    for (String word in words) {
      capitalized.add(word.firstCharToUpperCase());
    }
    if (attached) return capitalized.join(betweenWords);

    return capitalized.join(betweenWords + ' ');
  }

  ///[toUpperSnakeCase] Capitalize the all characters and replace whitespaces with underscore '_'.
  ///```dart
  /// 'upper snake case' // 'UPPER_SNAKE_CASE'
  ///```

  String toUpperSnakeCase() {
    if (isUpperCase) return replaceAll(' ', '_');
    return toUpperCase().replaceAll(' ', '_');
  }
}
