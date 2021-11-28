// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

///[getFirstToUpperCase] capitalize the first character of the given [string].
///
///In case [allWords] set to true it will capitalize the first character of all words,
///by default [allWords] is false.
///
/// Example:
///```dart
/// //capitalize only first character of first word.
/// getFirstToUpperCase('first char to upper') // 'First char to upper'
///
/// //capitalize only first character of every word.
/// getFirstToUpperCase('first char to upper', allWords: true) // 'First Char To Upper'
///```
String getFirstToUpperCase(String string, {
  bool allWords = false,
}) {
  string = string.trim();
  if (allWords) {
    final List<String> words = string.split(' ');
    final List<String> capitalized = [];
    for (String word in words) {
      capitalized.add(getFirstToUpperCase(word));
    }
    return capitalized.join(' ');
  }
  return getFirstChar(string).toUpperCase() + string.substring(1);
}

///[getLastToUpperCase] capitalize the last character of the given [string].
///
///In case [allWords] set to true it will capitalize the last character of all words,
///by default [allWords] is false.
///
/// Example:
///```dart
/// //capitalize only last character of first word.
/// getLastToUpperCase('last char to upper') // 'first char to uppeR'
///
/// //capitalize only last character of every word.
/// getLastToUpperCase('last char to upper', allWords: true) // 'lasT chaR tO uppeR'
///```
String getLastToUpperCase(String string, {
  bool allWords = false,
}) {
  string = string.trim();
  if (allWords) {
    final List<String> words = string.split(' ');
    final List<String> capitalized = [];
    for (String word in words) {
      capitalized.add(getLastToUpperCase(word));
    }
    return capitalized.join(' ');
  }
  return string.substring(0, getLastCharIndex(string)) +
      getLastChar(string).toUpperCase();
}

///[getToUpperCamelCase] capitalize the first character words of the given [string].
///
///By default words will have a whitespace between each other,
/// if [attached] set to true the result wil be concatenate.
///
/// Also you are able to chios the character in between words by using [betweenWords].
/// Examples:
///
///```dart
/// getUpperCamelCase('upper camel case') // 'Upper Camel Case'
/// getUpperCamelCase('upper camel case', attached: true) // 'UpperCamelCase'
/// getUpperCamelCase('upper camel case', attached: true, betweenWords: '/') // 'Upper/Camel/Case'
/// getUpperCamelCase('upper camel case', attached: true, betweenWords: '//') // 'Upper//Camel//Case'
///```
String getToUpperCamelCase(String string, {
  bool attached = false,
  String betweenWords = '',
}) {
  string = string.trim().toLowerCase();
  final List<String> words = string.split(' ');
  final List<String> capitalized = [];
  for (String word in words) {
    capitalized.add(getFirstToUpperCase(word));
  }
  if (attached) return capitalized.join(betweenWords);

  return capitalized.join(betweenWords + ' ');
}

///[getToUpperSnakeCase] capitalize the all characters and replace whitespaces with underscore '_'.
///```dart
/// getUpperSnakeCase('upper camel case') // 'UPPER_CAMEL_CASE'
///```
String getToUpperSnakeCase(String string) {
  if (string.isUpperCase) return string.replaceAll(' ', '_');
  return string.toUpperCase().replaceAll(' ', '_');
}
