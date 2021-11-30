// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringCounters on String {
  ///[charCount] Returns the character count of the this [string].
  ///
  /// You are able to non counting some character by add those in [excludes].
  ///
  /// You are also able to ignore whitespaces in order to count only character,
  /// by default ignore whitespaces is false.
  ///```dart
  /// 'Dart lang'.charCount() // returns 9
  /// 'Dart lang'.charCount(ignoreWhitespace: true) // returns 8
  /// 'Dart lang'.charCount(ignoreWhitespace: true, excludes: ['n', 'g']) // returns 6
  ///```
  int charCount({
    List<String>? excludes,
    bool ignoreWhitespace = false,
  }) {
    List<String> chars = split('');
    List<String> resolved = [];
    if (ignoreWhitespace) {
      chars = removeAllWhitespaces.split('');
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

  ///[wordsCount] Returns the count of [words] of the this [string].
  ///
  /// You are able to non counting some words by add those in [excludes].
  ///
  /// You are also able to ignore symbols in order to count only [words],
  /// by default ignore symbols is true.
  ///
  /// Example:
  /// ```dart
  /// 'hello world!'.wordsCount(); // [hello, world] returns 2
  /// 'hello world !'.wordsCount(); // [hello, world] returns 2
  /// 'hello world !'.wordsCount(excludes: ['world']); // [hello] returns 1
  /// 'hello world !'.wordsCount(ignoreSymbols: false); // [hello, world, !] returns 3
  /// 'hello world !'.wordsCount(ignoreSymbols: false, excludes: ['!']); // [hello, world] returns 2
  /// 'hello world !'.wordsCount(ignoreSymbols: false, excludes: ['world']); // [hello, !] returns 2
  /// ```
  int wordsCount({
    List<String>? excludes,
    bool ignoreSymbols = true,
  }) {
    List<String> words = split(' ');
    List<String> resolved = [];
    if (ignoreSymbols) {
      words = removeAllSymbols.split(' ');
    }
    for (String word in words) {
      if (word != '') resolved.add(word.removeAllWhitespaces);
      if (excludes != null) {
        for (String exclude in excludes) {
          if (word == exclude) {
            resolved.remove(word.removeAllWhitespaces);
          }
        }
      }
    }
    return resolved.length;
  }
}
