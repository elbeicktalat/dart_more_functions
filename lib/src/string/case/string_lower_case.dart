// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringLowerCase on String {
  ///[getFirstToLowerCase] Converts to minuscule the first character of the this [string].
  ///
  ///In case [allWords] set to true it will minuscule the first character of all words.
  ///
  /// Example:
  ///```dart
  /// //makes minuscule only first character of first word.
  /// 'FIRST CHAR TO LOWER'.firstCharToLowerCase(); // 'fIRST CHAR TO LOWER'
  ///
  /// //capitalize only first character of every word.
  /// 'FIRST CHAR TO LOWER'.firstCharToLowerCase(allWords: true); // 'fIRST cHAR tO lOWER'
  ///```
  String firstCharToLowerCase({
    bool allWords = false,
  }) {
    String subject = trim();
    if (allWords) {
      final List<String> words = subject.split(' ');
      final List<String> lowercased = [];
      for (String word in words) {
        lowercased.add(word.firstCharToLowerCase());
      }
      return lowercased.join(' ');
    }
    return subject.firstChar.toLowerCase() + subject.substring(1);
  }

  ///[lastCharToLowerCase] Converts to minuscule the last character of the this [string].
  ///
  ///In case [allWords] set to true it will make minuscule the last character of all words.
  ///
  /// Example:
  ///```dart
  /// //makes minuscule only last character of last word.
  /// 'LAST TO LOWERCASE'.lastCharToLowerCase(); // 'LAST TO LOWERCASe'
  ///
  /// //makes minuscule only last character of every word.
  /// 'LAST TO LOWERCASE'.lastCharToLowerCase(allWords: true) // 'LASt To LOWERCASe'
  ///```
  String lastCharToLowerCase({
    bool allWords = false,
  }) {
    String subject = trim();
    if (allWords) {
      final List<String> words = subject.split(' ');
      final List<String> lowercased = [];
      for (String word in words) {
        lowercased.add(word.lastCharToLowerCase());
      }
      return lowercased.join(' ');
    }
    return subject.substring(0, subject.lastCharIndex) +
        subject.lastChar.toLowerCase();
  }

  ///[toLowerCamelCase] Converts to minuscule the first word character
  /// and capitalize the first character of the next words.
  ///
  ///By default words will have a whitespace between each other,
  /// if [attached] set to true the result will be concatenate.
  ///
  /// Also you are able to chios the character in between words by using [betweenWords].
  /// Examples:
  ///
  ///```dart
  /// 'LOWER CAMEL CASE'.toLowerCamelCase(); // 'lower Camel Case'
  /// 'LOWER CAMEL CASE'.toLowerCamelCase(attached: true); // 'lowerCamelCase'
  /// 'LOWER CAMEL CASE'.toLowerCamelCase(attached: true, betweenWords: '/'); // 'lower/Camel/Case'
  /// 'LOWER CAMEL CASE'.toLowerCamelCase(attached: true, betweenWords: '  /  '); // 'lower/Camel/Case'
  /// 'LOWER CAMEL CASE'.toLowerCamelCase(betweenWords: '// '); // 'lower// Camel// Case'
  ///```
  String toLowerCamelCase({
    bool attached = false,
    String betweenWords = '',
  }) {
    String subject = trim().toLowerCase();
    final List<String> words = subject.split(' ');
    final List<String> capitalized = [];
    for (String word in words) {
      capitalized.add(word.firstCharToUpperCase());
    }
    final String _firstChar = capitalized.first.firstChar.toLowerCase();
    if (attached) {
      betweenWords = betweenWords.trim();
      return _firstChar + capitalized.join(betweenWords).substring(1);
    }
    return _firstChar + capitalized.join(betweenWords + ' ').substring(1);
  }

  ///[toLowerSnakeCase] Converts to minuscule all characters and replace whitespaces with underscore '_'.
  ///```dart
  /// 'lower underscore case'.toLowerSnakeCase(); // 'lower_underscore_case'
  /// 'LOWER UNDERSCORE CASE'.toLowerSnakeCase(); // 'lower_underscore_case'
  ///```
  String toLowerSnakeCase() {
    String subject = toLowerCase();
    final List<String> words = subject.toWords();
    final List<String> resolved = [];
    for (String word in words) {
      if (word != '') resolved.add(word);
    }
    return resolved.join('_');
  }

  ///[toLowerSnakeCase] Converts to minuscule all characters and replace whitespaces with underscore '_'.
  ///```dart
  /// 'lower kebab case'.toLowerKebabCase(); // 'lower-kebab-case'
  /// 'LOWER KEBAB CASE'.toLowerKebabCase(); // 'lower-kebab-case'
  ///```
  String toLowerKebabCase() {
    String subject = toLowerCase();
    final List<String> words = subject.toWords();
    final List<String> resolved = [];
    for (String word in words) {
      if (word != '') resolved.add(word);
    }
    return resolved.join('-');
  }
}
