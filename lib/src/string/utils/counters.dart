// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

///[getCharCount] Returns the character count of the given [string].
///
/// You are able to non counting some character by add those in [excludes].
///
/// You are also able to ignore whitespaces in order to count only character,
/// by default ignore whitespaces is false.
///```dart
/// getCharCount('Dart lang') // returns 9
/// getCharCount('Dart lang', ignoreWhitespace: true) // returns 8
/// getCharCount('Dart lang', ignoreWhitespace: true, excludes: ['n', 'g']) // returns 6
///```
int getCharCount(String string, {
  List<String>? excludes,
  bool ignoreWhitespace = false,
}) {
  List<String> chars = string.split('');
  List<String> resolved = [];
  if (ignoreWhitespace) {
    chars = getRemoveWhitespaces(string).split('');
  }
  for (String char in chars) {
    resolved.add(char);
    if (excludes != null) {
      for (String exclude in excludes) {
        if (char == exclude) {
          resolved.remove(char);
        }
      }
    }
  }
  return resolved.length;
}

///[getWordsCount] Returns the count of [words] of the given [string].
///
/// You are able to non counting some words by add those in [excludes].
///
/// You are also able to ignore symbols in order to count only [words],
/// by default ignore symbols is true.
///
/// Example:
/// ```dart
/// getWordsCount('hello world!'); // [hello, world] returns 2
/// getWordsCount('hello world !'); // [hello, world] returns 2
/// getWordsCount('hello world !', excludes: ['world']) // [hello] returns 1
/// getWordsCount('hello world !', ignoreSymbols: false); // [hello, world, !] returns 3
/// getWordsCount('hello world !', ignoreSymbols: false, excludes: ['!']) // [hello, world] returns 2
/// getWordsCount('hello world !', ignoreSymbols: false, excludes: ['world']) // [hello, !] returns 2
/// ```
int getWordsCount(String string, {
  List<String>? excludes,
  bool ignoreSymbols = true,
}) {
  List<String> words = string.split(' ');
  List<String> resolved = [];
  if (ignoreSymbols) {
    words = getRemoveSymbols(string).split(' ');
  }
  for (String word in words) {
    if (word != '') resolved.add(getRemoveWhitespaces(word));
    if (excludes != null) {
      for (String exclude in excludes) {
        if (word == exclude) {
          resolved.remove(getRemoveWhitespaces(word));
        }
      }
    }
  }
  return resolved.length;
}
